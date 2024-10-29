
local UserInputService = game:GetService("UserInputService")

local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local Notified = false

return function(Config)
    local Window = {
        Title = Config.Title or "UI Library",
        Author = Config.Author,
        Icon = Config.Icon or "",
        Folder = Config.Folder or "WindUI",
        Size = Config.Size or UDim2.fromOffset(560, 460),
        Transparent = Config.Transparent or false,
        Position = UDim2.new(
			0.5, 0,
			0.5, 0
		),
		UICorner = 9,
		UIPadding = 14,
		SideBarWidth = Config.SideBarWidth or 200,
		UIElements = {},
		Theme = Config.Theme,
		SuperParent = Config.Parent
    }
    
    
    local UICorner = New("UICorner", {
        CornerRadius = UDim.new(0,Window.UICorner)
    })
    local UIStroke = New("UIStroke", {
        Thickness = 0.6,
        Color = Color3.fromHex(Config.Theme.Outline),
        ThemeTag = {
            Color = "Outline",
        },
        Transparency = 1, -- 0.8
    })

    local ResizeHandle = New("Frame", {
        Size = UDim2.new(0,32,0,32),
        Position = UDim2.new(1,0,1,0),
        AnchorPoint = Vector2.new(0.5,0.5),
        BackgroundTransparency = 1,
        ZIndex = 99,
        Active = true
    })
    local FullScreenIcon = New("Frame", {
        Size = UDim2.new(1,0,1,0),
        BackgroundTransparency = 1, -- .85
        BackgroundColor3 = Color3.new(0,0,0),
        ZIndex = 98,
        Active = false,
    }, {
        New("ImageLabel", {
            Size = UDim2.new(0,70,0,70),
            Image = Creator.Icon("expand"),
            BackgroundTransparency = 1,
            Position = UDim2.new(0.5,0,0.5,0),
            AnchorPoint = Vector2.new(0.5,0.5),
            ImageTransparency = 1,
        }),
        New("UICorner", {
            CornerRadius = UDim.new(0,Window.UICorner)
        })
    })

    Window.UIElements.SideBar = New("ScrollingFrame", {
        Size = UDim2.new(0,Window.SideBarWidth,1,-Window.UIPadding*4),
        Position = UDim2.new(0,0,0,Window.UIPadding*4),
        BackgroundTransparency = 1,
        ScrollBarThickness = 0,
        CanvasSize = UDim2.new(0,0,0,0),
        AutomaticCanvasSize = "Y",
        ScrollingDirection = "Y",
    }, {
        New("UIPadding", {
            PaddingTop = UDim.new(0,0),
            PaddingLeft = UDim.new(0,Window.UIPadding+4),
            PaddingRight = UDim.new(0,0),
            PaddingBottom = UDim.new(0,Window.UIPadding+4),
        }),
        New("UIListLayout", {
            SortOrder = "LayoutOrder",
            Padding = UDim.new(0,8)
        })
    })

    Window.UIElements.MainBar = New("Frame", {
        Size = UDim2.new(1,-Window.UIElements.SideBar.AbsoluteSize.X,1,-Window.UIPadding*4),
        Position = UDim2.new(0,Window.UIElements.SideBar.AbsoluteSize.X,0,Window.UIPadding*4),
        BackgroundTransparency = 1,
    })
    
    local Gradient = New("Frame", {
        Size = UDim2.new(1,0,1,0),
        BackgroundTransparency = Window.Transparent and 0.15 or 0,
        ZIndex = 3,
        Name = "Gradient"
    }, {
        New("UIGradient", {
            Color = ColorSequence.new(Color3.new(0,0,0),Color3.new(0,0,0)),
            Rotation = 90,
            Transparency = NumberSequence.new{
                NumberSequenceKeypoint.new(0, 1), 
                NumberSequenceKeypoint.new(1, Window.Transparent and 0.85 or 0.7),
            }
        }),
        New("UICorner", {
            CornerRadius = UDim.new(0,Window.UICorner)
        })
    })
    
    local Blur = New("ImageLabel", {
        Image = "rbxassetid://8992230677",
        ImageColor3 = Color3.new(0,0,0),
        ImageTransparency = 1, -- 0.7
        Size = UDim2.new(1,120,1,116),
        Position = UDim2.new(0,-120/2,0,-116/2),
        ScaleType = "Slice",
        SliceCenter = Rect.new(99,99,99,99),
        BackgroundTransparency = 1,
    })

    local CloseButton = New("ImageButton", {
        Image = Creator.Icon("x"),
        BackgroundTransparency = 1,
        Size = UDim2.new(1,-6,1,-6),
        ThemeTag = {
            ImageColor3 = "Text"
        },
        AnchorPoint = Vector2.new(0.5,0.5),
        Position = UDim2.new(0.5,0,0.5,0),
    })

    local MinimizeButton = New("ImageButton", {
        Image = Creator.Icon("minus"),
        BackgroundTransparency = 1,
        Size = UDim2.new(1,-6,1,-6),
        ThemeTag = {
            ImageColor3 = "Text"
        },
        AnchorPoint = Vector2.new(0.5,0.5),
        Position = UDim2.new(0.5,0,0.5,0),
    })

    local OpenButton = New("TextButton", {
        Size = UDim2.new(0,50,0,50),
        Position = UDim2.new(0.5,0,0.5,0),
        AnchorPoint = Vector2.new(0.5,0.5),
        Parent = Config.Parent,
        Visible = false,
        ThemeTag = {
            BackgroundColor3 = "Accent"
        },
        BackgroundTransparency = .15,
        ZIndex = 99,
    }, {
        New("ImageLabel", {
			BackgroundTransparency = 1,
			Image = "http://www.roblox.com/asset/?id=5554236805",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(23, 23, 277, 277),
			Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
			Position = UDim2.fromOffset(-15, -15),
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ImageTransparency = 0.1,
			SliceScale = 1.1,
		}),
		New("UICorner", {
            CornerRadius = UDim.new(0,Window.UICorner)
        }),
        New("UIStroke", {
            Thickness = 0.6,
            ThemeTag = {
                Color = "Outline",
            },
            Transparency = 1, -- 0.8
        }),
        New("ImageLabel", {
            Image = "",
            Size = UDim2.new(1,-20,1,-20),
            Position = UDim2.new(0.5,0,0.5,0),
            AnchorPoint = Vector2.new(0.5,0.5),
            BackgroundTransparency = 1,
            Name = "Icon"
        })
    })
    
    Window.UIElements.Main = New("Frame", {
        Size = Window.Size,
        Position = Window.Position,
        BackgroundTransparency = 1,
        Parent = Config.Parent,
        AnchorPoint = Vector2.new(0.5,0.5),
        Active = true,
    }, {
        Blur,
        Gradient,
        New("Frame", {
            BackgroundColor3 = Color3.fromHex(Config.Theme.Accent),
            BackgroundTransparency = 1, -- Window.Transparent and 0.15 or 0
            Size = UDim2.new(1,0,1,0),
            Name = "Background",
            ThemeTag = {
                BackgroundColor3 = "Accent"
            },
            ZIndex = 2,
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0,Window.UICorner)
            })
        }),
        UIStroke,
        UICorner,
        ResizeHandle,
        FullScreenIcon,
        New("UIScale", {
            Scale = 0.9,
        }),
        New("CanvasGroup", {
            Size = UDim2.new(1,0,1,0),
            BackgroundTransparency = 1,
            Name = "Main",
            GroupTransparency = 1,
            ZIndex = 97,
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0,Window.UICorner)
            }),
            Window.UIElements.SideBar,
            Window.UIElements.MainBar,
            New("Frame", { -- Topbar
                Size = UDim2.new(1,0,0,Window.UIPadding*4),
                BackgroundTransparency = 1,
                Name = "Topbar"
            }, {
                --[[New("Frame", { -- Outline
                    Size = UDim2.new(1,Window.UIPadding*2, 0, 1),
                    Position = UDim2.new(0,-Window.UIPadding, 1,Window.UIPadding-2),
                    BackgroundTransparency = 0.9,
                    BackgroundColor3 = Color3.fromHex(Config.Theme.Outline),
                }),]]
                New("Frame", { -- Topbar Left Side
                    AutomaticSize = "X",
                    Size = UDim2.new(0,0,1,0),
                    BackgroundTransparency = 1,
                    Name = "Left"
                }, {
                    New("UIListLayout", {
                        Padding = UDim.new(0,10),
                        SortOrder = "LayoutOrder",
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                    }),
                    New("Frame", {
                        AutomaticSize = "XY",
                        BackgroundTransparency = 1,
                        Name = "Title",
                        LayoutOrder= 2,
                    }, {
                        New("UIListLayout", {
                            Padding = UDim.new(0,0),
                            SortOrder = "LayoutOrder",
                            FillDirection = "Vertical",
                            VerticalAlignment = "Top",
                        }),
                        New("TextLabel", {
                            Text = Window.Title,
                            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                            BackgroundTransparency = 1,
                            AutomaticSize = "XY",
                            TextXAlignment = "Left",
                            TextSize = 16,
                            TextColor3 = Color3.fromHex(Config.Theme.Text),
                            ThemeTag = {
                                TextColor3 = "Text"
                            }
                        }),
                    }),
                    New("UIPadding", {
                        PaddingLeft = UDim.new(0,4)
                    })
                }),
                New("Frame", { -- Topbar Right Side
                    AutomaticSize = "XY",
                    BackgroundTransparency = 1,
                    Position = UDim2.new(1,0,0.5,0),
                    AnchorPoint = Vector2.new(1,0.5)
                }, {
                    New("UIListLayout", {
                        Padding = UDim.new(0,6),
                        FillDirection = "Horizontal",
                        SortOrder = "LayoutOrder",
                    }),
                    New("TextButton", {
                        Size = UDim2.new(0,24,0,24),
                        BackgroundTransparency = 1,
                        LayoutOrder = 1,
                    }, {
                        CloseButton,
                    }),
                    New("TextButton", {
                        Size = UDim2.new(0,24,0,24),
                        BackgroundTransparency = 1,
                        
                    }, {
                        MinimizeButton,
                    })
                }),
                New("UIPadding", {
                    PaddingTop = UDim.new(0,Window.UIPadding),
                    PaddingLeft = UDim.new(0,Window.UIPadding),
                    PaddingRight = UDim.new(0,Window.UIPadding),
                    PaddingBottom = UDim.new(0,Window.UIPadding),
                })
            })
        })
    })

    local Dragged = false

    Creator.Drag(Window.UIElements.Main)
    Creator.Drag(OpenButton, function(v) Dragged = v end)
    
    if Window.Author then
        New("TextLabel", {
            Text = "by " .. Window.Author,
            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
            BackgroundTransparency = 1,
            TextTransparency = 0.4,
            AutomaticSize = "XY",
            Parent = Window.UIElements.Main.Main.Topbar.Left.Title,
            TextXAlignment = "Left",
            TextSize = 14,
            LayoutOrder = 2,
            TextColor3 = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                TextColor3 = "Text"
            }
        })
    end
    
    task.spawn(function()
        if Window.Icon then
            local ImageLabel = New("ImageLabel", {
                Parent = Window.UIElements.Main.Main.Topbar.Left,
                Size = UDim2.new(0,24,0,24),
                BackgroundTransparency = 1,
                LayoutOrder = 1,
                ThemeTag = {
                    ImageColor3 = "Text"
                }
            })
            if Creator.Icon(Window.Icon) then
                ImageLabel.Image = Creator.Icon(Window.Icon)
                OpenButton.Icon.Image = Creator.Icon(Window.Icon)
            end
            if string.find(Window.Icon,"http") then
                if not isfile(Window.Folder .. "/Assets/Icon.png") then
                    if not isfolder(Window.Folder) then
                        makefolder(Window.Folder)
                    end
                    print("pisun")
                    local response = request({
                        Url = Window.Icon,
                        Method = "GET",
                    }).Body
                    writefile(Window.Folder .. "/Assets/Icon.png", response)
                end
                ImageLabel.Image = getcustomasset(Window.Folder .. "/Assets/Icon.png")
                OpenButton.Icon.Image = getcustomasset(Window.Folder .. "/Assets/Icon.png")
            elseif string.find(Window.Icon,"rbxassetid") then
                ImageLabel.Image = Window.Icon
                OpenButton.Icon.Image = Window.Icon
            end
        end
    end)
    
    function Window:Open()
        Tween(Window.UIElements.Main.Background, 0.25, {BackgroundTransparency = Window.Transparent and 0.15 or 0}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.Main, 0.25, {GroupTransparency = 0}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.UIScale, 0.25, {Scale = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Gradient, 0.25, {BackgroundTransparency = 0}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Blur, 0.25, {ImageTransparency = .7}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(UIStroke, 0.25, {Transparency = .8}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
    end
    function Window:Close()
        local Close = {}
        
        Tween(Window.UIElements.Main.Background, 0.25, {BackgroundTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.Main, 0.25, {GroupTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.UIScale, 0.25, {Scale = .9}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Gradient, 0.25, {BackgroundTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Blur, 0.25, {ImageTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(UIStroke, 0.25, {Transparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        
        function Close:Destroy()
            task.wait(0.25)
            Config.Parent.Parent:Destroy()
        end
        
        return Close
    end
    
    CloseButton.MouseButton1Click:Connect(function()
        Window:Close():Destroy()
    end)
    MinimizeButton.MouseButton1Click:Connect(function()
        Window:Close()
        OpenButton.Visible = true
        if not Notified then
            Notified = not Notified
            Config.WindUI:Notify({
                Title = "Minimize",
                Content = "You've closed the Window. Click the Button to open the Window",
                Durarion = 5,
            })
        end
    end)
    OpenButton.MouseButton1Click:Connect(function()
        Window:Open()
        OpenButton.Visible = false
    end)
    
    task.spawn(function()
        Window:Open()
    end)
    
    function Window:Tab(Config)
        local TabModule = require("./Tab").Init(Window)
        
        return TabModule.New({ Title = Config.Title, Icon = Config.Icon, Parent = Window.UIElements.SideBar })
    end

    local function startResizing(input)
        isResizing = true
        FullScreenIcon.Active = true
        initialSize = Window.UIElements.Main.Size
        initialInputPosition = input.Position
        Tween(FullScreenIcon, 0.2, {BackgroundTransparency = .65}):Play()
        Tween(FullScreenIcon.ImageLabel, 0.2, {ImageTransparency = 0}):Play()
    
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                isResizing = false
                FullScreenIcon.Active = false
                Tween(FullScreenIcon, 0.2, {BackgroundTransparency = 1}):Play()
                Tween(FullScreenIcon.ImageLabel, 0.2, {ImageTransparency = 1}):Play()
            end
        end)
    end
    
    ResizeHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            startResizing(input)
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if isResizing then
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                local delta = input.Position - initialInputPosition
                local newSize = UDim2.new(0, initialSize.X.Offset + delta.X*2, 0, initialSize.Y.Offset + delta.Y*2)
                
                Tween(Window.UIElements.Main, 0.06, {
                    Size = UDim2.new(
                    0, math.clamp(newSize.X.Offset, 400, 700),
                    0, math.clamp(newSize.Y.Offset, 350, 650)
                )}):Play()
            end
        end
    end)

    return Window
end