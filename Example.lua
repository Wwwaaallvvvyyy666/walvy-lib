local WindUI = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/dist/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "WindUI Library", -- UI Title
    Icon = "image", -- Url or rbxassetid or lucide
    --Author = ".ftgs", -- Author & Creator
    Folder = "CloudHub", -- Folder name for saving data
    Size = UDim2.fromOffset(580,460), -- UI Size
    Transparent = true,-- UI Transparency
    Theme = "Dark", -- UI Theme
    SideBarWidth = 170, -- UI Sidebar Width (number)
})

-- Tabs

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
local WindowTab = Window:Tab({
    Title = "Window Configuration",
    Icon = "settings",
})
local NotificationTab = Window:Tab({
    Title = "Notification Tab",
    Icon = "bell",
})


-- Main Tab


MainTab:Section({ Title = "Paragraphs" })

local Paragraph = MainTab:Paragraph({
    Title = "Paragraph",
    Desc = "Paragraph Content \nAnd second line",
})
local Paragraph = MainTab:Paragraph({
    Title = "Paragraph without content",
})


MainTab:Section({ Title = "Buttons" })

local Button = MainTab:Button({
    Title = "Button Main",
    Desc = "Button Desc",
    Callback = function()
        -- Destroy Button
        Button.ButtonFrame:Destroy()
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
        if state then
            print("True State")
        else
            print("False State")
        end
    end,
})
local Button = MainTab:Toggle({
    Title = "Toggle Main",
    Desc = "Toggle Desc Main",
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
    Step = 10,
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
    Step = 10,
    Value = {
        Min = 20,
        Max = 120,
        Default = 70,
    },
    Callback = function(value)
        print(value)
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


-- Window Tab

--- Custom Theme Load

---- 1. Add Theme

Window:AddTheme({
    Name = "NameHere",
    
    Accent = "#1c1c1c",         -- Background       (1)
    Outline = "#0055ff",        -- Outline          (2)
    
    Text = "#FFFFFF",           -- Text             (3)
    Text2 = "#000000",          -- Text 2           (4)
    PlaceholderText = "#999999" -- Placeholder Text (5)
})


---- 2. Use Theme

Window:SetTheme("Dark")

---- 3. Load Themes

local ThemeValues = {}
for Name, Theme in pairs(Window:GetThemes()) do
    table.insert(ThemeValues, Name)
end

local Dropdown = WindowTab:Dropdown({
    Title = "Select theme",
    Multi = false,
    Value = "Dark",
    AllowNone = false,
    Values = ThemeValues,
    Callback = function(Tab)
        Window:SetTheme(Tab)
    end
})


local Button = WindowTab:Toggle({
    Title = "Toggle Transparency",
    Desc = "Toggles  Window Transparency",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end
})
