local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local NotificationModule = {
    Size = UDim2.new(0,300,1,-100-56),
    UICorner = 9,
    UIPadding = 14,
    Holder = nil,
    NotificationIndex = 0,
    Notifications = {}
}

function NotificationModule.Init(Parent)
    return New("Frame", {
        Position = UDim2.new(1,-116/4,0,56),
        AnchorPoint = Vector2.new(1,0),
        Size = NotificationModule.Size,
        Parent = Parent,
        BackgroundTransparency = 1,
        --[[ScrollingDirection = "Y",
        ScrollBarThickness = 0,
        CanvasSize = UDim2.new(0,0,0,0),
        AutomaticCanvasSize = "Y",--]]
    }, {
        New("UIListLayout", {
            HorizontalAlignment = "Center",
			SortOrder = "LayoutOrder",
			VerticalAlignment = "Bottom",
			Padding = UDim.new(0, 8),
        }),
    })
end

function NotificationModule.New(Config)
    local Notification = {
        Title = Config.Title or "Notification",
        Content = Config.Content or nil,
        Duration = Config.Duration or 5,
        UIElements = {},
        Closed = false,
    }
    NotificationModule.NotificationIndex = NotificationModule.NotificationIndex + 1
    NotificationModule.Notifications[NotificationModule.NotificationIndex] = Notification
    
    local Blur = New("ImageLabel", {
        Image = "rbxassetid://8992230677",
        ImageColor3 = Color3.new(0,0,0),
        ImageTransparency = .75,
        Size = UDim2.new(1,120,1,116),
        Position = UDim2.new(0,-120/2,0,-116/2),
        ScaleType = "Slice",
        SliceCenter = Rect.new(99,99,99,99),
        BackgroundTransparency = 1,
    })

    local Duration = New("Frame", {
        Name = "Duration",
        Size = UDim2.new(1,0,1,0),
        Position = UDim2.new(0,0,0,0),
        ThemeTag = {
            BackgroundColor3 = "Outline"
        },
        BackgroundTransparency = .9,
        ZIndex = 999,
    })

    local CloseButton = New("ImageButton", {
        Size = UDim2.new(0,18,0,18),
        Image = Creator.Icon("x"),
        Position = UDim2.new(1,-NotificationModule.UIPadding, 0, NotificationModule.UIPadding),
        AnchorPoint = Vector2.new(1,0),
        ThemeTag = {
            ImageColor3 = "Text"
        },
        BackgroundTransparency = 1,
        ZIndex = 999,
    })
    
    Notification.UIElements.MainContainer = New("Frame", {
        Size = UDim2.new(1,0,0,0),
        Parent = Config.Holder,
        AnchorPoint = Vector2.new(0,0),
        --AutomaticSize = "Y",
        BackgroundTransparency = 1,
    }, {
        New("Frame", {
            Size = UDim2.new(1,0,1,0),
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0,1),
            Position = UDim2.new(2,0,1,0),
        }, {
            Blur,
            CloseButton,
            New("CanvasGroup", {
                Size = UDim2.new(1,0,0,0),
                AutomaticSize = "Y",
                BackgroundTransparency = 1,
                Name = "Frame",
                ZIndex = 2
            }, {
                Duration,
                New("UICorner", {
                    CornerRadius = UDim.new(0,NotificationModule.UICorner),
                }),
                New("UIStroke", {
                    Thickness = 0.6,
                    ThemeTag = {
                        Color = "Outline"
                    },
                    Transparency = .8,
                }),
                New("Frame", {
                    Size = UDim2.new(1,0,1,0),
                    BackgroundTransparency = 1,
                    ZIndex = 999,
                }, {
                    New("UIPadding", {
                        PaddingTop = UDim.new(0,NotificationModule.UIPadding+2),
                        PaddingLeft = UDim.new(0,NotificationModule.UIPadding),
                        PaddingRight = UDim.new(0,NotificationModule.UIPadding),
                        PaddingBottom = UDim.new(0,NotificationModule.UIPadding+2),
                    }),
                    New("TextLabel", {
                        Text = Notification.Title,
                        ThemeTag = {
                            TextColor3 = "Text"
                        },
                        TextSize = 15,
                        FontFace = Font.new(Creator.Font),
                        BackgroundTransparency = 1,
                        TextWrapped = true,
                        AutomaticSize = "Y",
                        Size = UDim2.new(1,-18-NotificationModule.UIPadding,0,0),
                        TextXAlignment = "Left",
                        LayoutOrder = 1,
                    }),
                    New("UIListLayout", {
                        SortOrder = "LayoutOrder",
                        Padding = UDim.new(0,8)
                    })
                }),
                New("Frame", {
                    BackgroundTransparency = 0.15,
                    Size = UDim2.new(1,0,1,0),
                    ThemeTag = {
                        BackgroundColor3 = "Accent",
                    },
                }, {
                    New("UICorner", {
                        CornerRadius = UDim.new(0,NotificationModule.UICorner),
                    }),
                }),
                New("Frame", {
                    Size = UDim2.new(1,0,1,0),
                    BackgroundTransparency = 0,
                    Name = "Gradient",
                    ZIndex = 5,
                }, {
                    New("UICorner", {
                        CornerRadius = UDim.new(0,NotificationModule.UICorner),
                    }),
                    New("UIGradient", {
                        Color = ColorSequence.new(Color3.new(0,0,0), Color3.new(0,0,0)),
                        Rotation = 90,
                        Transparency = NumberSequence.new{
                            NumberSequenceKeypoint.new(0, 1), 
                            NumberSequenceKeypoint.new(1, 0.7),
                        }
                    })
                })
            })
        })
    })

    if Notification.Content then
        New("TextLabel", {
            Text = Notification.Content,
            ThemeTag = {
                TextColor3 = "Text"
            },
            TextSize = 15,
            FontFace = Font.new(Creator.Font),
            TextTransparency = .4,
            TextWrapped = true,
            BackgroundTransparency = 1,
            AutomaticSize = "Y",
            Size = UDim2.new(1,-18-NotificationModule.UIPadding,0,0),
            TextXAlignment = "Left",
            LayoutOrder = 1,
            Parent = Notification.UIElements.MainContainer.Frame.Frame.Frame,
        })
    end
    
    task.spawn(function()
        Tween(Notification.UIElements.MainContainer.Frame, 0.4, {Position = UDim2.new(0,0,1,0)}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
        if NotificationModule.NotificationIndex ~= 1 then
            Notification.UIElements.MainContainer.Frame.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                Tween(Notification.UIElements.MainContainer, 0.2, {Size = UDim2.new(1,0,0,Notification.UIElements.MainContainer.Frame.Frame.AbsoluteSize.Y)}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
            end)
        else
            Notification.UIElements.MainContainer.Frame.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                Notification.UIElements.MainContainer.Size = UDim2.new(1,0,0,Notification.UIElements.MainContainer.Frame.Frame.AbsoluteSize.Y)
            end)
        end
    end)
    
    function Notification:Close()
        if not Notification.Closed then
            Tween(Notification.UIElements.MainContainer.Frame, 0.4, {Position = UDim2.new(2,0,1,0)}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
            Notification.Closed = true
            task.spawn(function()
                task.wait(.3)
                Notification.UIElements.MainContainer.Frame.Frame:Destroy()
                Tween(Notification.UIElements.MainContainer, 0.2, {Size = UDim2.new(1,0,0,0)}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
                task.wait(.35)
                Notification.UIElements.MainContainer:Destroy()
            end)
        end
    end
    
    task.spawn(function()
        Tween(Duration, Notification.Duration, {Size = UDim2.new(0,0,1,0)}, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut):Play()
        
        task.wait(Notification.Duration)
        
        Notification:Close()
    end)
    
    CloseButton.MouseButton1Click:Connect(function()
        Notification:Close()
    end)
    
    --Tween():Play()
    return Notification
end

return NotificationModule