local WindUI = require("./src/init")

local Window = WindUI:CreateWindow({
    Title = "WindUI Library", -- UI Title
    Icon = "image", -- Url or rbxassetid or lucide
    Author = ".ftgs", -- Author & Creator
    Folder = "CloudHub", -- Folder name for saving data (And key)
    Size = UDim2.fromOffset(580, 460), -- UI Size
    KeySystem = { -- Creates key system
        Key = "1234", -- key
        Note = "The Key is 1234", -- Note
        URL = "https://github.com/Footagesus/WindUI", -- URL To get key (example: Discord)
        SaveKey = true, -- Saves the key in the folder specified above
    }, 
    Transparent = true,-- UI Transparency
    Theme = "Dark", -- UI Theme
    SideBarWidth = 170, -- UI Sidebar Width (number)
    HasOutline = false, -- Adds Oultines to the window
})

-- Tabs

--- Section for Tabs

local MainTab = Window:Tab({
    Title = "Main",
    Icon = "folder",
})

local EmptyTab = Window:Tab({
    Title = "Empty Tab",
    Icon = "frown",
})

local EmptyTab2 = Window:Tab({
    Title = "Tab Without icon",
})

local NotificationTab = Window:Tab({
    Title = "Notification Tab",
    Icon = "bell",
})

local WindowTab = Window:Tab({
    Title = "Window and File Configuration",
    Icon = "settings",
})


-- Main Tab

MainTab:Section({ 
    Title = "Big section!",
    TextSize = 22,
})
MainTab:Section({ 
    Title = "Section Left",
    TextXAlignment = "Left"
})
MainTab:Section({ 
    Title = "Section Center",
    TextXAlignment = "Center"
})
MainTab:Section({ 
    Title = "Section Right",
    TextXAlignment = "Right"
})

MainTab:Section({ Title = "Paragraphs" })

local Paragraph1 = MainTab:Paragraph({
    Title = "Paragraph",
    Desc = "Paragraph Content \nAnd second line",
})
local Paragraph = MainTab:Paragraph({
    Title = "Paragraph without content",
})

Paragraph1:SetTitle("New Title!")
Paragraph1:SetDesc("New Description!")


MainTab:Section({ Title = "Buttons" })

local Dialog = Window:Dialog({
    Title = "Dialog haha",
    Content = "Dialog Content",
    Buttons = {
        {
            Title = "Confirm",
            Callback = function()
                print("confirm")
            end
        },
        {
            Title = "Cancel",
            Callback = function()
                print("cancel")
            end
        },
        {
            Title = "Idk",
            Callback = function()
                print("idk")
            end
        }
    }
})

local Button = MainTab:Button({
    Title = "Button Main",
    Desc = "Button Desc",
    Callback = function()
        Dialog:Open()
    end,
})
local ButtonClose = MainTab:Button({
    Title = "Button Main Close Window",
    Callback = function()
        Window:Close():Destroy()
    end,
})


MainTab:Section({ Title = "Toggles" })

local Button = MainTab:Toggle({
    Title = "Toggle Main",
    Callback = function(state)
        print(state)
    end,
})
local Button = MainTab:Toggle({
    Title = "Toggle Main",
    Desc = "Toggle Desc Main",
    Value = true,
    Callback = function(state)
        if state then
            print("True State")
        else
            print("False State")
        end
    end,
})


MainTab:Section({ Title = "Sliders" })

local Slider = MainTab:Slider({
    Title = "Slider FieldOfView",
    Step = 1,
    Value = {
        Min = 20,
        Max = 120,
        Default = 70,
    },
    Callback = function(value)
        game.Workspace.Camera.FieldOfView = value
    end
})

local Slider = MainTab:Slider({
    Title = "Slider Main FieldOfView",
    Desc = "Slider Main Desc",
    Step = 1,
    Value = {
        Min = 16,
        Max = 500,
        Default = 16,
    },
    Callback = function(value)
        game.Workspace[game.Players.LocalPlayer.Name].Humanoid.WalkSpeed = value
    end
})


MainTab:Section({ Title = "Keybinds" })

local KeybindClicked = false
local Keybind = MainTab:Keybind({
    Title = "Keybind Toggle UI",
    Desc = "Keybind Toggle UI Desc",
    Value = "LeftShift",
    CanChange = true,
    Callback = function(k)
        if not KeybindClicked then
            Window:Close()
        else
            Window:Open()
        end
        KeybindClicked = not KeybindClicked
    end
})
local Keybind = MainTab:Keybind({
    Title = "Keybind Toggle UI",
    Value = "F",
    CanChange = true,
    Callback = function(k)
        print(k)
    end
})


MainTab:Section({ Title = "Inputs" })

local Input = MainTab:Input({
    Title = "Input Notify",
    Desc = "Input Notify Desc",
    Value = "Text Hello",
    PlaceholderText = "Enter your message ahhh",
    ClearTextOnFocus = true, -- muahahahaah
    Callback = function(Text)
        WindUI:Notify({
            Title = "Input message",
            Content = "Message: " .. Text,
            Duration = 5,
        })
    end
})
local Input = MainTab:Input({
    Title = "Input Notify 2",
    Value = "",
    PlaceholderText = "Enter your message ahhh",
    ClearTextOnFocus = false,
    Callback = function(Text)
        WindUI:Notify({
            Title = "Input message 2",
            Content = "Message: " .. Text,
            Duration = 5,
        })
    end
})


MainTab:Section({ Title = "Dropdowns" })

local Dropdown = MainTab:Dropdown({
    Title = "Dropdown",
    Desc = "Dropdown Desc",
    Multi = false,
    Value = "Tab 1",
    AllowNone = true,
    Values = {
        "Tab 1", "Tab 2", "Tab 3", "Tab 4", "Tab 5", "Tab 6", "Tab 7", "Tab 8", "Tab 9", "Tab 10",
        "Tab 11", "Tab 12", "Tab 13", "Tab 14", "Tab 15", "Tab 16", "Tab 17", "Tab 18", "Tab 19", "Tab 20"
    },
    Callback = function(Tab)
        WindUI:Notify({
            Title = "Dropdown Select",
            Content = "Selected: " .. Tab,
            Duration = 2,
        })
    end
})

MainTab:Button({
    Title = "Refresh Dropdown ↑",
    Callback = function()
        local someItems = {}
        
        for i = 1, 100 do
            table.insert(someItems, "Item blablablabla " .. i)
        end

        Dropdown:Refresh(someItems)
    end
})

local Dropdown = MainTab:Dropdown({
    Title = "Dropdown 2",
    Desc = "Dropdown Desc 2",
    Multi = true,
    Value = {
        "Tab 1", "Tab 5"
    },
    Values = {
        "Tab 1", "Tab 2", "Tab 3", "Tab 4", "Tab 5", 
    },
    Callback = function(Tab)
        WindUI:Notify({
            Title = "Dropdown Select 2",
            Content = "Selected: " .. game:GetService("HttpService"):JSONEncode(Tab),
            Duration = 2,
        })
    end
})

MainTab:Section({ Title = "Colorpickers" })

local Colorpicker = MainTab:Colorpicker({
    Title = "Colorpicker",
    Default = Color3.fromRGB(255, 129, 0),
    Callback = function(color)
        WindUI:Notify({
            Title = "Colorpicker Callback",
            Content = "Color: \nR: " .. math.floor(color.R * 255) .. "\nG: " .. math.floor(color.G * 255) .. "\nB: " .. math.floor(color.B * 255),
            Duration = 6,
        })
    end
})

local Colorpicker2 = MainTab:Colorpicker({
    Title = "Colorpicker",
    Desc = "Colorpicker Desc Transparency",
    Transparency = 0.5,
    Default = Color3.fromRGB(96, 205, 255),
    Callback = function(color, transparency)
        WindUI:Notify({
            Title = "Colorpicker Callback 2",
            Content = "Color: \nR: " .. math.floor(color.R * 255) .. "\nG: " .. math.floor(color.G * 255) .. "\nB: " .. math.floor(color.B * 255) .. "\nTransparency: " .. transparency,
            Duration = 6,
        })
    end
})

-- Notification Tab


local Button = NotificationTab:Button({
    Title = "Notify",
    Desc = "Notify Button Desc",
    Callback = function()
        WindUI:Notify({
            Title = "Notification",
            Content = "Content",
            Duration = 5,
        })
    end,
})
local Button = NotificationTab:Button({
    Title = "Long Notify",
    Desc = "Long Notify Button Desc",
    Callback = function()
        WindUI:Notify({
            Title = "Notification LONG AND BIG",
            Content = "Content LON GGGGG EEE RRR AND BIGGER ",
            Duration = 200,
        })
    end,
})
local Button = NotificationTab:Button({
    Title = "Notification with buttons",
    Desc = "Notify with buttons and Callback",
    Callback = function()
        local Notification
        Notification = WindUI:Notify({
            Title = "Question",
            Content = "Would you like to die?",
            CanClose = false, -- dont allow to close the notification
            --Duration = 5, -- removing duration
            Callback = function(Button)  -- Callback
                if Button == "Confirm" then
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0
                else
                    print("Canceled..")
                end
                -- Closing Notification
                Notification:Close()
            end
        })
    end,
})


-- Window Tab

--- Custom Theme Load

---- 1. Add Theme

Window:AddTheme({
    Name = "Halloween",
    
    Accent = "#331400",
    Outline = "#400000",
    
    Text = "#EAEAEA",
    PlaceholderText = "#AAAAAA"
})



---- 2. Use Theme

Window:SetTheme("Dark")

---- 3. Load Themes

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
for name, _ in pairs(Window:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = WindowTab:Dropdown({
    Title = "Select Theme",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        Window:SetTheme(theme)
    end
})
themeDropdown:Select(Window:GetCurrentTheme())

local ToggleTransparency = WindowTab:Toggle({
    Title = "Toggle Window Transparency",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = Window:GetTransparency()
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
            SaveFile(fileNameInput, { Transparent = Window:GetTransparency(), Theme = Window:GetCurrentTheme() })
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
                if data.Theme then Window:SetTheme(data.Theme) end
            end
        end
    end
})

WindowTab:Button({
    Title = "Overwrite File",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = Window:GetTransparency(), Theme = Window:GetCurrentTheme() })
        end
    end
})

WindowTab:Button({
    Title = "Refresh List",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})