# 1.5.0
### Changelog:
- Keysystem ui remake
- Small ui remake
- Dialog ui remake
- Now you can make notifications lower than before. Use `WindUI:SetNotificationLower(true)`
- Added icon to Dialog, variant to buttons :
```lua
local Dialog = Window:Dialog({
    Icon = "droplet", -- lucide
    Title = "Dialog",
    Content = "Dialog Content",
    Buttons = {
        {
            Title = "Confirm",
            Variant = "Primary", -- Or "Secondary"
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
```