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
local Tween = Creator.Tween

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
    }),
    New("Folder", {
        Name = "KeySystem"
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
        warn("You cannot create more than one window")
        return
    end
    
    local CanLoadWindow = true
    
    local Theme = Themes[Config.Theme or "Dark"]
    
    WindUI.Theme = Theme
    
    Creator.SetTheme(Theme)
    
    function KeySystem()
        CanLoadWindow = false
        local KeyDialogInit = require("./Components/Dialog").Init(WindUI.ScreenGui.KeySystem)
        local KeyDialog = KeyDialogInit.Create(true)
        
        local Blur = New("ImageLabel", {
            Image = "rbxassetid://8992230677",
            ImageColor3 = Color3.new(0,0,0),
            ImageTransparency = .7,
            Size = UDim2.new(0,120,0,116),
            Position = UDim2.new(0.5,0,0.5,0),
            AnchorPoint = Vector2.new(0.5,0.5),
            ScaleType = "Slice",
            SliceCenter = Rect.new(99,99,99,99),
            BackgroundTransparency = 1,
            ZIndex = -1,
            Parent = KeyDialog.UIElements.Main.Parent
        })
    
        KeyDialog.UIElements.Main:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            Blur.Size = UDim2.new(0, KeyDialog.UIElements.Main.AbsoluteSize.X + 120, 0, KeyDialog.UIElements.Main.AbsoluteSize.Y + 116)
        end)
        
        local CloseButton = New("ImageButton", {
            Size = UDim2.new(0,22,0,22),
            Image = Creator.Icon("x"),
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(1,0),
            Position = UDim2.new(1,0,0,0),
            Parent = KeyDialog.UIElements.Main
        })
        
        local Main = New("Frame", {
            Size = UDim2.new(0,0,0,0),
            AutomaticSize = "XY",
            BackgroundTransparency = 1,
            Parent = KeyDialog.UIElements.Main
        })
        
        local UIListLayout = New("UIListLayout", {
            Padding = UDim.new(0,8*1.8),
            FillDirection = "Vertical",
            Parent = Main
        })
    
        New("UISizeConstraint", {
		    MinSize = Vector2.new(50, 20),
		    MaxSize = Vector2.new(620, math.huge),
		    Parent = Main,
	    })
        
        
        local Title = New("TextLabel", {
            Text = "Key System",
            TextSize = 20,
            FontFace = Font.new(Creator.Font, Enum.FontWeight.SemiBold),
            TextXAlignment = "Left",
            TextWrapped = false,
            Size = UDim2.new(0,0,0,0),
            AutomaticSize = "XY",
            ThemeTag = {
                TextColor3 = "Text"
            },
            BackgroundTransparency = 1,
        })
    
        local UIListLayoutTitle = New("UIListLayout", {
            Padding = UDim.new(0,8),
            FillDirection = "Horizontal",
            VerticalAlignment = "Bottom",
        })
    
        local WindowTitle = New("TextLabel", {
            Text = Config.Title or "UI Library",
            TextSize = 16,
            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
            TextXAlignment = "Left",
            TextWrapped = false,
            Size = UDim2.new(0,0,0,0),
            AutomaticSize = "XY",
            TextTransparency = .4,
            ThemeTag = {
                TextColor3 = "Text"
            },
            BackgroundTransparency = 1,
        })
    
        local TitleHolder = New("Frame", {
            Parent = Main,
            AutomaticSize = "XY",
            BackgroundTransparency = 1,
        }, {
            Title,
            WindowTitle,
            UIListLayoutTitle
        })
        
        if Config.KeySystem.Note then
            local Note = New("TextLabel", {
                Text = "Note:\n" .. Config.KeySystem.Note,
                TextSize = 15,
                RichText = true,
                LayoutOrder = 3,
                TextTransparency = .4,
                TextWrapped = true,
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                TextXAlignment = "Left",
                Size = UDim2.new(0,320,0,0),
                AutomaticSize = "Y",
                LayoutOrder = 2,
                TextYAlignment = "Top",
                ThemeTag = {
                    TextColor3 = "Text"
                },
                BackgroundTransparency = 1,
                Parent = Main
            })
        end
        
        local Input = New("Frame", {
	        Size = UDim2.new(0,0,0,35),
	        AutomaticSize = "X",
	        LayoutOrder = 1,
	        BackgroundTransparency = 1,
	        Parent = Main
	    }, {
	        New("UIListLayout", {
		        Padding = UDim.new(0,10),
		        FillDirection = "Horizontal",
		        VerticalAlignment = "Center",
	        }),
	        New("Frame",{
                BackgroundTransparency = .95,
                Size = UDim2.new(0,180,0,35),
                AnchorPoint = Vector2.new(1,0.5),
                Position = UDim2.new(1,0,0.5,0),
                ThemeTag = {
                    BackgroundColor3 = "Text",
                },
                ZIndex = 2
            }, {
                New("TextBox", {
                    MultiLine = false,
                    Size = UDim2.new(1,0,0,0),
                    AutomaticSize = "Y",
                    BackgroundTransparency = 1,
                    Position = UDim2.new(0,0,0.5,0),
                    AnchorPoint = Vector2.new(0,0.5),
                    ClearTextOnFocus = false,
                    Text = "",
                    TextSize = 15,
                    ClipsDescendants = true,
                    TextXAlignment = "Left",
                    FontFace = Font.new(Creator.Font),
                    PlaceholderText = "Enter Key...",
                    ThemeTag = {
                        TextColor3 = "Text",
                    }
                }),
                New("UICorner", {
                    CornerRadius = UDim.new(0,8)
                }),
                New("UIStroke", {
                    ThemeTag = {
                        Color = "Text",
                    },
                    Transparency = .93,
                    ApplyStrokeMode = "Border",
                    Thickness = 1,
                }),
                New("UIPadding", {
                    PaddingTop = UDim.new(0,12),
                    PaddingLeft = UDim.new(0,12),
                    PaddingRight = UDim.new(0,12),
                    PaddingBottom = UDim.new(0,12),
                })
            }),
	    })
	
	    local ButtonFrame = New("TextButton", {
            Text = "Submit",
            TextSize = 15,
            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
            ThemeTag = {
                TextColor3 = "Text",
                BackgroundColor3 = "Text",
            },
            BackgroundTransparency = .9,
            Parent = Input,
            Size = UDim2.new(0,0,0,35),
            AutomaticSize = "X",
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0, 8),
            }),
            New("UIPadding", {
                PaddingTop = UDim.new(0, 14),
                PaddingLeft = UDim.new(0, 14),
                PaddingRight = UDim.new(0, 14),
                PaddingBottom = UDim.new(0, 14),
            }),
            New("Frame", {
                Size = UDim2.new(1,(14)*2,1,(14)*2),
                Position = UDim2.new(0.5,0,0.5,0),
                AnchorPoint = Vector2.new(0.5,0.5),
                ThemeTag = {
                    BackgroundColor3 = "Text"
                },
                BackgroundTransparency = 1, -- .9
            }, {
                New("UICorner", {
                    CornerRadius = UDim.new(0, 8),
                }),
            })
        })
        local GetKeyButton
        if Config.KeySystem.URL then
            GetKeyButton = New("TextButton", {
                Text = "Get Key",
                TextSize = 15,
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                ThemeTag = {
                    TextColor3 = "Text",
                    BackgroundColor3 = "Text",
                },
                BackgroundTransparency = .9,
                Parent = Input,
                Size = UDim2.new(0,0,0,35),
                AutomaticSize = "X",
            }, {
                New("UICorner", {
                    CornerRadius = UDim.new(0, 8),
                }),
                New("Frame", {
                    Size = UDim2.new(1,(14)*2,1,(14)*2),
                    Position = UDim2.new(0.5,0,0.5,0),
                    AnchorPoint = Vector2.new(0.5,0.5),
                    ThemeTag = {
                        BackgroundColor3 = "Text"
                    },
                    BackgroundTransparency = 1, -- .9
                }, {
                    New("UICorner", {
                        CornerRadius = UDim.new(0, 8),
                    }),
                }),
                New("UIPadding", {
                    PaddingTop = UDim.new(0, 14),
                    PaddingLeft = UDim.new(0, 14),
                    PaddingRight = UDim.new(0, 14),
                    PaddingBottom = UDim.new(0, 14),
                }),
            })
        end
        if Config.KeySystem.SaveKey and Config.Folder then
            local WindowTitle = New("TextLabel", {
                Text = "Your key will be saved in Workspace/" .. Config.Folder .. "/" .. game.Players.LocalPlayer.Name .. ".key",
                TextSize = 13,
                FontFace = Font.new(Creator.Font, Enum.FontWeight.SemiBold),
                TextXAlignment = "Left",
                TextWrapped = false,
                LayoutOrder = 99,
                Parent = Main,
                Size = UDim2.new(0,0,0,0),
                AutomaticSize = "XY",
                TextTransparency = .4,
                ThemeTag = {
                    TextColor3 = "Text"
                },
                BackgroundTransparency = 1,
            })
        end
    
        
        
        ButtonFrame.MouseEnter:Connect(function()
            Tween(ButtonFrame.Frame, 0.1, {BackgroundTransparency = .9}):Play()
        end)
        ButtonFrame.MouseLeave:Connect(function()
            Tween(ButtonFrame.Frame, 0.1, {BackgroundTransparency = 1}):Play()
        end)
        ButtonFrame.MouseButton1Click:Connect(function()
            local Key = Input.Frame.TextBox.Text
            if Key and Key == Config.KeySystem.Key then
                KeyDialog:Close()
                Tween(Blur, .1, {ImageTransparency = 1}):Play()
                CanLoadWindow = true
                if Config.KeySystem.SaveKey and Config.Folder then
                    writefile(Config.Folder .. "/" .. game.Players.LocalPlayer.Name .. ".key", tostring(Key))
                end
                task.spawn(function()
                    task.wait(0.1)
                    Blur:Destroy()
                end)
            end
        end)
        
        if Config.KeySystem.URL then
            GetKeyButton.MouseEnter:Connect(function()
                Tween(GetKeyButton.Frame, 0.1, {BackgroundTransparency = .9}):Play()
            end)
            GetKeyButton.MouseLeave:Connect(function()
                Tween(GetKeyButton.Frame, 0.1, {BackgroundTransparency = 1}):Play()
            end)
            GetKeyButton.MouseButton1Click:Connect(function()
                setclipboard(Config.KeySystem.URL)
                
                GetKeyButton.Text = "Copied!"
                task.wait(3)
                GetKeyButton.Text = "Get Key"
                
            end)
        end
        
        
        CloseButton.MouseButton1Click:Connect(function()
            KeyDialog:Close()
            Tween(Blur, .1, {ImageTransparency = 1}):Play()
            task.spawn(function()
                task.wait(0.1)
                Blur:Destroy()
            end)
        end)
	
    end
    
    if Config.KeySystem then
        if Config.KeySystem.SaveKey then
            if isfile(Config.Folder .. "/" .. game.Players.LocalPlayer.Name .. ".key") and Config.KeySystem.Key == readfile(Config.Folder .. "/" .. game.Players.LocalPlayer.Name .. ".key" ) then
                CanLoadWindow = true
            else
                KeySystem()
            end
        else
            KeySystem()
        end
		repeat task.wait() until CanLoadWindow
    end

    local Window = CreateWindow({
        Title = Config.Title,
        Author = Config.Author,
        Size = Config.Size,
        Transparent = Config.Transparent,
        Icon = Config.Icon,
        Folder = Config.Folder,
        HasOutline = Config.HasOutline,
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