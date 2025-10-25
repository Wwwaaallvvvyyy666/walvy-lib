local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()

local Window = WindUI:CreateWindow({
    Title = "WindUI Library | Example UI",
    Icon = "door-open",
    Author = ".ftgs",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    KeySystem = {
        Key = { "1234", "5678" },
        Note = "The Key is '1234' or '5678",
        URL = "https://github.com/Footagesus/WindUI",
        SaveKey = true,
    },
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    HasOutline = false,
})


local ButtonTab = Window:Tab({ Title = "Button", Icon = "mouse-pointer-2" })
local CodeTab = Window:Tab({ Title = "Code", Icon = "code" })
local ColorPickerTab = Window:Tab({ Title = "ColorPicker", Icon = "paintbrush" })
local NotificationTab = Window:Tab({ Title = "Notification", Icon = "bell" })
local ToggleTab = Window:Tab({ Title = "Toggle", Icon = "toggle-left" })
local SliderTab = Window:Tab({ Title = "Slider", Icon = "sliders-horizontal" })
local InputTab = Window:Tab({ Title = "Input", Icon = "keyboard" })
local DropdownTab = Window:Tab({ Title = "Dropdown", Icon = "chevrons-up-down" })
Window:Divider()
local WindowTab = Window:Tab({ Title = "Window and File Configuration", Icon = "settings" })
local CreateThemeTab = Window:Tab({ Title = "Create Theme", Icon = "palette" })


ButtonTab:Button({
    Title = "Click Me",
    Desc = "This is a simple button",
    Callback = function() print("Button Clicked!") end
})

ButtonTab:Button({
    Title = "Locked Button",
    Desc = "This button is locked",
    Locked = true,
})

ButtonTab:Button({
    Title = "Submit",
    Desc = "Click to submit",
    Callback = function() print("Submitted!") end,
    Locked = false
})


CodeTab:Code({
    Title = "Example Code",
    Code = [[

local message = "Hello"
print(message)

if message == "Hello" then
    print("Greetings!")
end
    ]],
})

CodeTab:Code({
    Title = "Another Code Example",
    Code = [[
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/dist/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "WindUI Example",
    Icon = "image",
    Author = ".ftgs",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
})
    ]],
})


ColorPickerTab:Colorpicker({
    Title = "Pick a Color",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color) print("Selected color: " .. tostring(color)) end
})

ColorPickerTab:Colorpicker({
    Title = "Background Color",
    Default = Color3.fromRGB(0, 0, 255),
    Callback = function(color) print("Background color: " .. tostring(color)) end
})


NotificationTab:Button({
    Title = "Click to get Notified",
    Callback = function() 
        WindUI:Notify({
            Title = "Notification Example",
            Content = "Content",
            Icon = "droplet-off",
            Duration = 5,
        })
    end
})


ToggleTab:Toggle({
    Title = "Enable Feature",
    Default = true,
    Callback = function(state) print("Feature enabled: " .. tostring(state)) end
})

ToggleTab:Toggle({
    Title = "Activate Mode",
    Default = false,
    Callback = function(state) print("Mode activated: " .. tostring(state)) end
})


SliderTab:Slider({
    Title = "Volume Slider",
    Value = {
        Min = 0,
        Max = 100,
        Default = 50,
    },
    Callback = function(value) print("Volume set to: " .. value) end
})

SliderTab:Slider({
    Title = "Brightness Slider",
    Value = {
        Min = 1,
        Max = 100,
        Default = 75,
    },
    Callback = function(value) print("Brightness set to: " .. value) end
})


InputTab:Input({
    Title = "Username",
    Default = "Guest",
    Placeholder = "Enter your username",
    Callback = function(input) print("Username: " .. input) end
})

InputTab:Input({
    Title = "Password",
    Default = "",
    Placeholder = "Enter your password",
    Callback = function(input) print("Password entered.") end
})


DropdownTab:Dropdown({
    Title = "Select an Option",
    Values = { "Option 1", "Option 2", "Option 3" },
    Value = "Option 1",
    Callback = function(option) print("Selected: " .. option) end
})

DropdownTab:Dropdown({
    Title = "Choose a Category",
    Values = { "Category A", "Category B", "Category C" },
    Value = "Category A",
    Callback = function(option) print("Category selected: " .. option) end
})



-- Configuration


local HttpService = game:GetService("HttpService")

local folderPath = "WindUI"
makefolder(folderPath)

local function SaveFile(fileName, data)
    local filePath = folderPath .. "/" .. fileName .. ".json"
    local jsonData = HttpService:JSONEncode(data)
    writefile(filePath, jsonData)
end

local function LoadFile(fileName)
    local filePath = folderPath .. "/" .. fileName .. ".json"
    if isfile(filePath) then
        local jsonData = readfile(filePath)
        return HttpService:JSONDecode(jsonData)
    end
end

local function ListFiles()
    local files = {}
    for _, file in ipairs(listfiles(folderPath)) do
        local fileName = file:match("([^/]+)%.json$")
        if fileName then
            table.insert(files, fileName)
        end
    end
    return files
end

WindowTab:Section({ Title = "Window" })

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = WindowTab:Dropdown({
    Title = "Select Theme",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = WindowTab:Toggle({
    Title = "Toggle Window Transparency",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

WindowTab:Section({ Title = "Save" })

local fileNameInput = ""
WindowTab:Input({
    Title = "Write File Name",
    PlaceholderText = "Enter file name",
    Callback = function(text)
        fileNameInput = text
    end
})

WindowTab:Button({
    Title = "Save File",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

WindowTab:Section({ Title = "Load" })

local filesDropdown
local files = ListFiles()

filesDropdown = WindowTab:Dropdown({
    Title = "Select File",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
    end
})

WindowTab:Button({
    Title = "Load File",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "File Loaded",
                    Content = "Loaded data: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})

WindowTab:Button({
    Title = "Overwrite File",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

WindowTab:Button({
    Title = "Refresh List",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})

local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].PlaceholderText

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        PlaceholderText = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = CreateThemeTab:Input({
    Title = "Theme Name",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})

CreateThemeTab:Colorpicker({
    Title = "Background Color",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})

CreateThemeTab:Colorpicker({
    Title = "Outline Color",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})

CreateThemeTab:Colorpicker({
    Title = "Text Color",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})

CreateThemeTab:Colorpicker({
    Title = "Placeholder Text Color",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

CreateThemeTab:Button({
    Title = "Update Theme",
    Callback = function()
        updateTheme()
    end
})