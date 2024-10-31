local WindUI = {
    Window = nil,
    Theme = nil,
    Themes = nil,
    Transparent = false
}
local RunService = game:GetService("RunService")

local Themes = require("./Themes/init")
local Creator = require("./Creator")
local New = Creator.New

WindUI.Themes = Themes

local ProtectGui = protectgui or (syn and syn.protect_gui) or function() end


WindUI.ScreenGui = New("ScreenGui", {
    Name = "WindUI",
    Parent = RunService:IsStudio() and LocalPlayer.PlayerGui or game:GetService("CoreGui"),
    IgnoreGuiInset = true,
}, {
    New("Folder", {
        Name = "Window"
    }),
    New("Folder", {
        Name = "Notifications"
    }),
    New("Folder", {
        Name = "Dropdowns"
    })
})
ProtectGui(WindUI.ScreenGui)


local Notify = require("./Components/Notification")
local Holder = Notify.Init(WindUI.ScreenGui.Notifications)

function WindUI:Notify(Config)
    return Notify.New({
        Title = Config.Title,
        Content = Config.Content,
        Duration = Config.Duration,
        CanClose = Config.CanClose,
        Callback = Config.Callback ,
        Window = WindUI.Window,
        Holder = Holder,
    })
end




function WindUI:CreateWindow(Config)
    local CreateWindow = require("./Components/Window")
    
    if WindUI.Window then
        print("You cannot create more than one window")
        return
    end
    
    local Theme = Themes[Config.Theme or "Dark"]
    
    WindUI.Theme = Theme
    
    Creator.SetTheme(Theme)

    local Window = CreateWindow({
        Title = Config.Title,
        Author = Config.Author,
        Size = Config.Size,
        Transparent = Config.Transparent,
        Icon = Config.Icon,
        Folder = Config.Folder,
        Theme = Theme,
        WindUI = WindUI,
        Parent = WindUI.ScreenGui.Window,
        SideBarWidth = Config.SideBarWidth
    })

    WindUI.Transparent = Config.Transparent
    WindUI.Window = Window
    
    function Window:AddTheme(LTheme)
        Themes[LTheme.Name] = LTheme
        return LTheme
    end
    
    function Window:SetTheme(Value)
	    if Themes[Value] then
		    WindUI.Theme = Themes[Value]
		    Creator.SetTheme(Themes[Value])
		    Creator.UpdateTheme()
		    
		    return Themes[Value]
	    end
	    return nil
    end
    
    function Window:GetThemes()
        return Themes
    end
    function Window:GetCurrentTheme()
        return WindUI.Theme.Name
    end
    function Window:GetTransparency()
        return WindUI.Transparent or false
    end
    function Window:GetWindowSize()
        return Window.UIElements.Main.Size
    end
    
    
    function Window:ToggleTransparency(Value)
        WindUI.Transparent = Value
        Window.UIElements.Main.Background.BackgroundTransparency = Value and 0.15 or 0
        Window.UIElements.Main.Gradient.UIGradient.Transparency = NumberSequence.new{
            NumberSequenceKeypoint.new(0, 1), 
            NumberSequenceKeypoint.new(1, Value and 0.85 or 0.7),
        }
    end

    return Window
end

return WindUI