local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local NotificationModule = {
    Size = UDim2.new(0,300,1,-100-56),
    UICorner = 14,
    UIPadding = 14,
    ButtonPadding = 9,
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
        Duration = Config.Duration,
        Callback = Config.Callback,
        CanClose = Config.CanClose,
        UIElements = {},
        Closed = false,
    }
    if Notification.CanClose == nil then
        Notification.CanClose = true
    end
    NotificationModule.NotificationIndex = NotificationModule.NotificationIndex + 1
    NotificationModule.Notifications[NotificationModule.NotificationIndex] = Notification
    
    local Blur 
    -- local Blur = New("ImageLabel", {
    --     Image = "rbxassetid://8992230677",
    --     ImageColor3 = Color3.new(0,0,0),
    --     ImageTransparency = .75,
    --     Size = UDim2.new(1,120,1,116),
    --     Position = UDim2.new(0,-120/2,0,-116/2),
    --     ScaleType = "Slice",
    --     SliceCenter = Rect.new(99,99,99,99),
    --     BackgroundTransparency = 1,
    -- })
    local Duration
    if Notification.Duration then
        Duration = New("Frame", {
            Name = "Duration",
            Size = UDim2.new(1,0,0,4),
            Position = UDim2.new(0,0,0,0),
            ThemeTag = {
                BackgroundColor3 = "Outline"
            },
            BackgroundTransparency = .7,
            ZIndex = 999,
        })
    end
    local CloseButton
    if Notification.CanClose then
        CloseButton = New("ImageButton", {
            Size = UDim2.new(0,18,0,18),
            Image = Creator.Icon("x")[1],
            ImageRectOffset = Creator.Icon("x")[2].ImageRectPosition,
            ImageRectSize = Creator.Icon("x")[2]._Size,
            Position = UDim2.new(1,-NotificationModule.UIPadding, 0, NotificationModule.UIPadding),
            AnchorPoint = Vector2.new(1,0),
            ThemeTag = {
                ImageColor3 = "Text"
            },
            BackgroundTransparency = 1,
            ZIndex = 999,
        })
    end

    local ButtonsTable = {
        "Confirm",
        "Cancel"
    }
    
    local Buttons

    if Notification.Callback then
        Buttons = New("Frame", {
            Size = UDim2.new(1,0,0,0),
            AutomaticSize = "Y",
            BackgroundTransparency = 1,
            LayoutOrder = 5,
        }, {
            New("UIListLayout", {
                SortOrder = "LayoutOrder",
                FillDirection = "Horizontal",
                Padding = UDim.new(0,11/2)
            })
        })
        
        for _,Button in next, ButtonsTable do
            local ButtonText = New("TextButton", {
                Size = UDim2.new(1 / #ButtonsTable, -(((#ButtonsTable - 1) * 11/2) / #ButtonsTable), 0, 0),
                AutomaticSize = "Y",
                ThemeTag = {
                    BackgroundColor3 = "Text",
                    TextColor3 = Button == "Confirm" and "Accent" or "Text"
                },
                BackgroundTransparency = Button == "Confirm" and 0.15 or .9,
                Text = Button,
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                TextSize = 15,
                Parent = Buttons,
                LayoutOrder = Button == "Confirm" and 0 or 1
            }, {
                New("UICorner", {
                    CornerRadius = UDim.new(0,NotificationModule.UICorner-6),
                }),
                New("UIPadding", {
                    PaddingTop = UDim.new(0,NotificationModule.ButtonPadding),
                    PaddingLeft = UDim.new(0,NotificationModule.ButtonPadding),
                    PaddingRight = UDim.new(0,NotificationModule.ButtonPadding),
                    PaddingBottom = UDim.new(0,NotificationModule.ButtonPadding),
                }),
                New("Frame", {
                    Size = UDim2.new(1,NotificationModule.ButtonPadding*2,1,NotificationModule.ButtonPadding*2),
                    BackgroundColor3 = Color3.new(0,0,0),
                    BackgroundTransparency = 1,
                    Position = UDim2.new(0.5,0,0.5,0),
                    AnchorPoint = Vector2.new(0.5,0.5)
                }, {
                    New("UICorner", {
                        CornerRadius = UDim.new(0,NotificationModule.UICorner-6),
                    })
                })
            })
            ButtonText.MouseButton1Click:Connect(function()
                pcall(Notification.Callback, Button)
            end)
            ButtonText.MouseEnter:Connect(function()
                Tween(ButtonText.Frame, 0.1, {BackgroundTransparency = 0.85}):Play()
            end)
            ButtonText.MouseLeave:Connect(function()
                Tween(ButtonText.Frame, 0.1, {BackgroundTransparency = 1}):Play()
            end)
        end
    end
    
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
                    Transparency = .86,
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
                        TextSize = 16,
                        FontFace = Font.new(Creator.Font, Enum.FontWeight.SemiBold),
                        BackgroundTransparency = 1,
                        TextWrapped = true,
                        AutomaticSize = "Y",
                        Size = UDim2.new(1,-18-NotificationModule.UIPadding,0,0),
                        TextXAlignment = "Left",
                        LayoutOrder = 1,
                    }),
                    Buttons,
                    New("UIListLayout", {
                        SortOrder = "LayoutOrder",
                        Padding = UDim.new(0,2)
                    })
                }),
                New("Frame", {
                    BackgroundTransparency = 0.23,
                    Size = UDim2.new(1,0,1,0),
                    ThemeTag = {
                        BackgroundColor3 = "Accent",
                    },
                }, {
                    New("UICorner", {
                        CornerRadius = UDim.new(0,NotificationModule.UICorner),
                    }),
                }),
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
            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
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
            Notification.Closed = true
            Tween(Notification.UIElements.MainContainer.Frame, 0.4, {Position = UDim2.new(2,0,1,0)}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
            task.spawn(function()
                task.wait(.3)
                Notification.UIElements.MainContainer.Frame.Frame:Destroy()
                Tween(Notification.UIElements.MainContainer, 0.2, {Size = UDim2.new(1,0,0,-8)}, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
                task.wait(.35)
                Notification.UIElements.MainContainer:Destroy()
            end)
        end
    end
    
    task.spawn(function()
        if Duration then
            Tween(Duration, Notification.Duration, {Size = UDim2.new(0,0,0,4)}, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut):Play()
        
            task.wait(Notification.Duration)
        
            Notification:Close()
        end
    end)
    
    if CloseButton then
        CloseButton.MouseButton1Click:Connect(function()
            Notification:Close()
        end)
    end
    
    --Tween():Play()
    return Notification
end

return NotificationModule