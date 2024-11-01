
local UserInputService = game:GetService("UserInputService")

local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local Notified = false

return function(Config)
    local Window = {
        Title = Config.Title or "UI Library",
        Author = Config.Author,
        Icon = Config.Icon,
        Folder = Config.Folder,
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
		CanDropdown = true,
		SuperParent = Config.Parent
    }
    
    if Window.Folder then
        makefolder("WindUI/" .. Window.Folder)
    end
    
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
        Size = UDim2.new(
                    0, math.clamp(Window.Size.X.Offset, 400, 700),
                    0, math.clamp(Window.Size.Y.Offset, 350, 520)),
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
                    if not isfolder("WindUI" .. Window.Folder) then
                        makefolder("WindUI" .. Window.Folder)
                    end
                    print("pisun")
                    local response = request({
                        Url = Window.Icon,
                        Method = "GET",
                    }).Body
                    writefile("WindUI" .. Window.Folder .. "/Assets/Icon.png", response)
                end
                ImageLabel.Image = getcustomasset("WindUI" .. Window.Folder .. "/Assets/Icon.png")
                OpenButton.Icon.Image = getcustomasset("WindUI" .. Window.Folder .. "/Assets/Icon.png")
            elseif string.find(Window.Icon,"rbxassetid") then
                ImageLabel.Image = Window.Icon
                OpenButton.Icon.Image = Window.Icon
            end
        else
            OpenButton.Icon.Image = Creator.Icon("external-link")
        end
    end)
    
    function Window:Open()
        Tween(Window.UIElements.Main.Background, 0.25, {BackgroundTransparency = Window.Transparent and 0.15 or 0}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.Main, 0.25, {GroupTransparency = 0}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.UIScale, 0.25, {Scale = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Gradient, 0.25, {BackgroundTransparency = 0}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Blur, 0.25, {ImageTransparency = .7}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(UIStroke, 0.25, {Transparency = .8}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        
        Window.CanDropdown = true
        
        Window.UIElements.Main.Visible = true
    end
    function Window:Close()
        local Close = {}
        
        Window.CanDropdown = false
        
        Tween(Window.UIElements.Main.Background, 0.25, {BackgroundTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.Main, 0.25, {GroupTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Window.UIElements.Main.UIScale, 0.25, {Scale = .9}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Gradient, 0.25, {BackgroundTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(Blur, 0.25, {ImageTransparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        Tween(UIStroke, 0.25, {Transparency = 1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
        
        task.spawn(function()
            task.wait(0.25)
            Window.UIElements.Main.Visible = false
        end)
        
        function Close:Destroy()
            task.wait(0.25)
            Config.Parent.Parent:Destroy()
        end
        
        return Close
    end
    
    MinimizeButton.MouseButton1Click:Connect(function()
        Window:Close()
        task.spawn(function()
            task.wait(.3)
            OpenButton.Visible = true
        end)
        if not Notified then
            Notified = not Notified
            Config.WindUI:Notify({
                Title = "Minimize",
                Content = "You've closed the Window. Click the Button to open the Window",
                Duration = 5,
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
    
    local TabModule = require("./Tab").Init(Window)
    function Window:Tab(TabConfig)
        
        return TabModule.New({ Title = TabConfig.Title, Icon = TabConfig.Icon, Parent = Window.UIElements.SideBar })
    end
    
    local DialogModule = require("./Dialog").Init(Window)
    function Window:Dialog(DialogConfig)
        local DialogTable = {
            Title = DialogConfig.Title or "Dialog",
            Content = DialogConfig.Content,
            Buttons = DialogConfig.Buttons or {},
        }
        local Dialog = DialogModule.Create()
        
        
        
        Dialog.UIElements.UIListLayout = New("UIListLayout", {
            Padding = UDim.new(0,8*1.8),
            FillDirection = "Vertical",
            Parent = Dialog.UIElements.Main
        })
    
        New("UISizeConstraint", {
			MinSize = Vector2.new(50, 20),
			MaxSize = Vector2.new(620, math.huge),
			Parent = Dialog.UIElements.Main,
		})
        
        Dialog.UIElements.Title = New("TextLabel", {
            Text = DialogTable.Title,
            TextSize = 20,
            FontFace = Font.new(Creator.Font, Enum.FontWeight.SemiBold),
            TextXAlignment = "Left",
            TextWrapped = true,
            Size = UDim2.new(1,0,0,0),
            AutomaticSize = "Y",
            ThemeTag = {
                TextColor3 = "Text"
            },
            BackgroundTransparency = 1,
            Parent = Dialog.UIElements.Main
        })
        if DialogTable.Content then
            local Content = New("TextLabel", {
                Text = DialogTable.Content,
                TextSize = 18,
                TextTransparency = .4,
                TextWrapped = true,
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                TextXAlignment = "Left",
                Size = UDim2.new(1,0,0,0),
                AutomaticSize = "Y",
                LayoutOrder = 2,
                ThemeTag = {
                    TextColor3 = "Text"
                },
                BackgroundTransparency = 1,
                Parent = Dialog.UIElements.Main
            })
        end
        
        local ButtonsContent = New("Frame", {
            Size = UDim2.new(1,0,0,0),
            AutomaticSize = "Y",
            BackgroundTransparency = 1,
            Parent = Dialog.UIElements.Main,
            LayoutOrder = 4,
        }, {
            New("UIListLayout", {
			    Padding = UDim.new(0, 8),
			    FillDirection = "Horizontal",
			    HorizontalAlignment = "Center",
		    }),
        })
        
        for _,Button in next, DialogTable.Buttons do
            local ButtonFrame = New("TextButton", {
                Text = Button.Title or "Button",
                TextSize = 15,
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                ThemeTag = {
                    TextColor3 = "Text",
                    BackgroundColor3 = "Text",
                },
                BackgroundTransparency = .9,
                Parent = ButtonsContent,
                Size = UDim2.new(1 / #DialogTable.Buttons, -(((#DialogTable.Buttons - 1) * 8) / #DialogTable.Buttons), 0, 0),
                AutomaticSize = "Y",
            }, {
                New("UICorner", {
                    CornerRadius = UDim.new(0, Dialog.UICorner-3),
                }),
                New("UIPadding", {
                    PaddingTop = UDim.new(0, Dialog.UIPadding/1.6),
                    PaddingLeft = UDim.new(0, Dialog.UIPadding/1.6),
                    PaddingRight = UDim.new(0, Dialog.UIPadding/1.6),
                    PaddingBottom = UDim.new(0, Dialog.UIPadding/1.6),
                }),
                New("Frame", {
                    Size = UDim2.new(1,(Dialog.UIPadding/1.6)*2,1,(Dialog.UIPadding/1.6)*2),
                    Position = UDim2.new(0.5,0,0.5,0),
                    AnchorPoint = Vector2.new(0.5,0.5),
                    ThemeTag = {
                        BackgroundColor3 = "Text"
                    },
                    BackgroundTransparency = 1, -- .9
                }, {
                    New("UICorner", {
                        CornerRadius = UDim.new(0, Dialog.UICorner-3),
                    }),
                })
            })
            
            ButtonFrame.MouseEnter:Connect(function()
                Tween(ButtonFrame.Frame, 0.1, {BackgroundTransparency = .9}):Play()
            end)
            ButtonFrame.MouseLeave:Connect(function()
                Tween(ButtonFrame.Frame, 0.1, {BackgroundTransparency = 1}):Play()
            end)
            ButtonFrame.MouseButton1Click:Connect(function()
                Dialog:Close()
                task.spawn(function()
                    pcall(Button.Callback)
                end)
            end)
        end
        
        return Dialog
    end
    
    CloseButton.MouseButton1Click:Connect(function()
        Window:Dialog({
            Title = "Warning",
            Content = "Do you want to close this window?",
            Buttons = {
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
    end)

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
                    0, math.clamp(newSize.Y.Offset, 350, 520)
                )}):Play()
            end
        end
    end)

    return Window
end