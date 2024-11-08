# Getting Started

On this page
> [[toc]]

## Load Window
### Latest version <Badge type="info">Recommended</Badge>
```lua
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/dist/main.lua"))()
```

### Selected version
```lua
local Version = "1.1.9"
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/download/" .. Version .. "/main.lua"))()
```

## Window

### Create Window
```lua
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
    HasOutline = true, -- Adds Oultines to the window
})
```

## Notification

### Create default Notification
```lua
local Notification = WindUI:Notify({
    Title = "Notification",
    Content = "Content",
    Duration = 5,
})
```

### Create Notification with Buttons
```lua
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
```

### Close Notification
```lua
Notification:Close()
```

## Dialog

### Create Dialog
```lua
local Dialog = Window:Dialog({
    Title = "Welcome", -- Dialog Title
    Content = "Thanks for using my script", -- Dialog Content
    Buttons = { -- Dialog Buttons
        {
            Title = "OK!", -- Button title
            Callback = nil -- function() end
        },
    }
})

```

### Open Dialog
```lua
Dialog:Open()
```