## ⚠️ |  Full example you can find in [Example.lua](../Example.lua)

# Using UI Library

## Connect UI Library (using latest version: Recomended)
```lua
local WindUI = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/dist/main.lua"))()
```

## or use selected version
```lua
local Version = "1.0.0"
local WindUI = loadstring(game:HttpGetAsync("https://github.com/Footagesus/WindUI/releases/download/" .. Version .. "/main.lua"))()
```

<hr>

## Creating Window
```lua
local Window = WindUI:CreateWindow({
    Title = "WindUI Library",                         -- UI Title
    Icon = "image",                                   -- Url or rbxassetid or lucide
    Author = ".ftgs",                                 -- Author & Creator
    Folder = "CloudHub",                              -- Folder name for saving data (And key)
    Size = UDim2.fromOffset(580, 460),                -- UI Size
    KeySystem = {                                     -- Creates key system
        Key = "1234",                                 -- Key
        Note = "The Key is 1234",                     -- Note
        URL = "https://github.com/Footagesus/WindUI", -- URL To get key (example: Discord)
        SaveKey = true,                               -- Saves the key in the folder specified above
    }, 
    Transparent = true,                               -- UI Transparency
    Theme = "Dark",                                   -- UI Theme
    SideBarWidth = 170,                               -- UI Sidebar Width (number)
})
```

<hr>

## Creating Tab
```lua
local MainTab = Window:Tab({
    Title = "Main",  -- Tab Title                    
    Icon = "folder", -- Lucide Icons (src/Icons.lua)
})
```

<hr>

### Elements

## Creating Section
```lua
MainTab:Section({ 
    Title = "Title" -- Section Title
})
```

<hr>

## Creating Button
```lua
local Button = MainTab:Button({
    Title = "Button Main",        -- Button Title       
    Desc = "Button Desc",         -- Button Description 
    Callback = function()         -- Button Callback    
        print("Callback Example")
    end,
})
```

<hr>

## Creating Paragraph
```lua
local Paragraph = MainTab:Paragraph({
    Title = "Paragraph",                         -- Paragraph Title       
    Desc = "Paragraph Content\nAnd second line", -- Paragraph Description 
})
```

<hr>

## Creating Toggle
```lua
local Button = MainTab:Toggle({
    Title = "Toggle",            -- Toggle Title
    Title = "Toggle Desc",       -- Toggle Description
    Callback = function(state)   -- Toggle Callback
        if state then
            print("True State")
        else
            print("False State")
        end
    end,
})
```

<hr>

## Creating Slider
```lua
local Slider = MainTab:Slider({
    Title = "Slider FieldOfView", -- Slider Title
    Desc = "Slider Desc"          -- Slider Description
    Step = 10,                    -- Slider Stepping
    Value = {                     
        Min = 20,                 -- Min Slider value
        Max = 120,                -- Max Slider value
        Default = 70,             -- Default Slider value
    },
    Callback = function(value)    -- Slider Callback
        game.Workspace.Camera.FieldOfView = value
    end
})
```

<hr>

## Creating Keybind
```lua
local Keybind = MainTab:Keybind({
    Title = "Keybind Toggle UI",     -- Keybind Title
    Desc = "Keybind Toggle UI Desc", -- Keybind Description
    Value = "LeftShift",             -- Keybind Value
    CanChange = true,                -- Can Change Keybind
    Callback = function(k)           -- Keybind Callback
        -- Toggle logic
    end
})
```

<hr>

## Creating Input
```lua
local Input = MainTab:Input({
    Title = "Input Notify",                      -- Input Title
    Desc = "Input Notify Desc",                  -- Input Description
    Value = "Text Hello",                        -- Default Input Value
    PlaceholderText = "Enter your message ahhh", -- Placeholder Text
    ClearTextOnFocus = true,                     -- Clear text on focus
    Callback = function(Text)                    -- Input Callback
        WindUI:Notify({             -- !!!! Example
            Title = "Input message",
            Content = "Message: " .. Text,
            Duration = 5,
        })
    end
})
```

<hr>

## Creating Dropdown
```lua
local Dropdown = MainTab:Dropdown({
    Title = "Dropdown",               -- Dropdown Title
    Desc = "Dropdown Desc",           -- Dropdown Description
    Multi = false,                    -- Allow multiple selections
    Value = "Tab 1",                  -- Default selected value
    AllowNone = true,                 -- Allow none selection
    Values = {                        -- List of options
        "Tab 1", "Tab 2", "Tab 3", "Tab 4", 
        "Tab 5", "Tab 6", "Tab 7", "Tab 8", 
        "Tab 9", "Tab 10", "Tab 11", 
        "Tab 12", "Tab 13", "Tab 14", 
        "Tab 15", "Tab 16", "Tab 17", 
        "Tab 18", "Tab 19", "Tab 20"
    },
    Callback = function(Tab)          -- Dropdown Callback
        WindUI:Notify({
            Title = "Dropdown Select",
            Content = "Selected: " .. Tab,
            Duration = 2,
        })
    end
})
```

### Refresing Dropdown
```lua
Dropdown:Refresh({"Tab 1", "Tab 2"})
```

### Select Value
> Default Dropdown
```lua
Dropdown:Select("Tab 2") 
```

> Multi Dropdown
```lua
Dropdown:Select({"Tab 1", "Tab 2"}) 
```

<hr>

## Creating Colorpicker
### Without Transparency
```lua
local Colorpicker = MainTab:Colorpicker({
    Title = "Colorpicker",                   -- Colorpicker Title
    Desc = "Colorpicker Desc Transparency",  -- Colorpicker Desc
    Default = Color3.fromRGB(96, 205, 255),  -- Default Colorpicker color
    Callback = function(color)               -- Colorpicker Callback (It is activated only when you click on the "apply" button)
        WindUI:Notify({
            Title = "Colorpicker Callback 2",
            Content = "Color: \nR: " 
            .. math.floor(color.R * 255) .. 
            "\nG: " .. math.floor(color.G * 255) .. 
            "\nB: " .. math.floor(color.B * 255)
            Duration = 6,
        })
    end
})
```

### With Transparency
```lua
local Colorpicker = MainTab:Colorpicker({
    Title = "Colorpicker",                   -- Colorpicker Title
    Desc = "Colorpicker Desc Transparency",  -- Colorpicker Desc
    Transparency = 0.5,                      -- Colorpicker Transparency (remove it, if you want Colorpicker without Transparency)
    Default = Color3.fromRGB(96, 205, 255),  -- Default Colorpicker color
    Callback = function(color, transparency) -- Colorpicker Callback (It is activated only when you click on the "apply" button)
        WindUI:Notify({
            Title = "Colorpicker Callback 2",
            Content = "Color: \nR: " 
            .. math.floor(color.R * 255) .. 
            "\nG: " .. math.floor(color.G * 255) .. 
            "\nB: " .. math.floor(color.B * 255) .. 
            "\nTransparency: " .. transparency,
            Duration = 6,
        })
    end
})
```

<hr>

### Set Colorpicker

```lua
Colorpicker:Update(
    Color3.fromRGB(255,0,0),  -- Color
    0.5                       -- Transparency. ADD THIS ONLY WHEN YOU HAVE "Transparency" IN COLORPICKER
)
```
<hr>

### Other:

## Dialog
```lua
Window:Dialog({
    Title = "Warning",                             -- Dialog Title
    Content = "Do you want to close this window?", -- Dialog Content
    Buttons = {                                    -- Dialog Buttons
        {
            Title = "No",
            Callback = function() end
        },
        {
            Title = "Yes",
            Callback = function() Window:Close():Destroy() end
        }
    }
})
```

## Notify
```lua
WindUI:Notify({
    Title = "Notify Title",     -- Notification Title
    Content = "Notify Content", -- Notification Content
    Duration = 5,               -- Notification Duration
})
```

## Notify with buttons
```lua
local Notification
Notification = WindUI:Notify({
    Title = "Question",                 -- Notification Title
    Content = "Would you like to die?", -- notification Content
    CanClose = false,                   -- dont allow to close the notification
    --Duration = 5,                     -- removing duration
    Callback = function(Button)         -- Callback
        if Button == "Confirm" then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        else
            print("Canceled..")
        end
        -- Closing Notification
        Notification:Close()
    end
})
```

<hr>

## Load Own Theme
```lua
Window:AddTheme({
    Name = "Example",           -- Theme Name
    
    Accent = "#1c1c1c",         -- Background       (1)
    Outline = "#0055ff",        -- Outline          (2)
    
    Text = "#FFFFFF",           -- Text             (3)
    PlaceholderText = "#999999" -- Placeholder Text (4)
})
```

<img src="Images/numbers.png" width="100%">

<hr>

## Use Theme
```lua
Window:SetTheme("Dark") -- Theme
```

<hr>

## Get Themes
```lua
Window:GetThemes()
```

more soon......