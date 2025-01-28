local KeySystem = {}


local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween


function KeySystem.new(Config, Filename, func)
    local KeyDialogInit = require("./Dialog").Init(Config.WindUI.ScreenGui.KeySystem)
    local KeyDialog = KeyDialogInit.Create(true)
    
    KeyDialog.UIElements.Main.AutomaticSize = "Y"
    
    local Title = New("TextLabel", {
        AutomaticSize = "XY",
        BackgroundTransparency = 1,
        Text = Config.Title,
        FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
        ThemeTag = {
            TextColor3 = "Text",
        },
        TextSize = 20
    })
    local KeySystemTitle = New("TextLabel", {
        AutomaticSize = "XY",
        BackgroundTransparency = 1,
        Text = "Key System",
        TextTransparency = .4,
        FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
        ThemeTag = {
            TextColor3 = "Text",
        },
        TextSize = 18
    })
    
    local TitleContainer = New("Frame", {
        AutomaticSize = "XY",
        BackgroundTransparency = 1,
    }, {
        New("UIListLayout", {
            Padding = UDim.new(0,9),
            FillDirection = "Horizontal",
            VerticalAlignment = "Bottom"
        }),
        Title, KeySystemTitle,
        New("UIPadding", {
            PaddingRight = UDim.new(0,24+9),
        })
    })
    
    local CloseButton = New("TextButton", {
        Size = UDim2.new(0,24,0,24),
        BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(1,0),
        Position = UDim2.new(1,0,0,0),
    }, {
        New("ImageLabel", {
            Image = Creator.Icon("x")[1],
            ImageRectOffset = Creator.Icon("x")[2].ImageRectPosition,
            ImageRectSize = Creator.Icon("x")[2].ImageRectSize,
            ThemeTag = {
                ImageColor3 = "Text",
            },
            BackgroundTransparency = 1,
            Size = UDim2.new(1,-3,1,-3),
        })
    })
    CloseButton.MouseButton1Up:Connect(function()
        KeyDialog:Close()()
    end)

    local TextBox = New("TextBox", {
        BackgroundTransparency = 1,
        Size = UDim2.new(1,0,1,0),
        Text = "",
        TextXAlignment = "Left",
        PlaceholderText = "Enter Key...",
        FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
        ThemeTag = {
            TextColor3 = "Text",
            PlaceholderColor3 = "PlaceholderText"
        },
        TextSize = 18
    })
    
    local TextBoxHolder = New("Frame", {
        BackgroundTransparency = .95,
        Size = UDim2.new(1,0,0,38),
        ThemeTag = {
            BackgroundColor3 = "Text",
        },
    }, {
        New("UIStroke", {
            Thickness = 1.2,
            ThemeTag = {
                Color = "Text",
            },
            Transparency = .9,
        }),
        New("UICorner", {
            CornerRadius = UDim.new(0,11)
        }),
        TextBox,
        New("UIPadding", {
            PaddingLeft = UDim.new(0,11),
            PaddingRight = UDim.new(0,11),
        })
    })
    
    local NoteText
    if Config.KeySystem.Note and Config.KeySystem.Note ~= "" then
        NoteText = New("TextLabel", {
            Size = UDim2.new(1,0,0,0),
            AutomaticSize = "Y",
            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
            TextXAlignment = "Left",
            Text = Config.KeySystem.Note,
            TextSize = 18,
            TextTransparency = .6,
            ThemeTag = {
                TextColor3 = "Text",
            },
            BackgroundTransparency = 1,
            RichText = true
        })
    end

    local ButtonsContainer = New("Frame", {
        Size = UDim2.new(1,0,0,40),
        BackgroundTransparency = 1,
    }, {
        New("UIListLayout", {
            Padding = UDim.new(0,9),
            FillDirection = "Horizontal",
        })
    })

    local KeySystemButtons = {
        {
            Title = "Get Key",
            Icon = "external-link",
            Callback = function()
                setclipboard(Config.KeySystem.URL)
            end,
            Variant = "Secondary"
        },
        {
            Title = "Continue",
            Icon = "chevron-right",
            Callback = function()
                local Key = TextBox.Text
                local isKey = tostring(Config.KeySystem.Key) == tostring(Key)
                if type(Config.KeySystem.Key) == "table" then
                    isKey = table.find(Config.KeySystem.Key, tostring(Key))
                end
                
                if isKey then
                    KeyDialog:Close()()
                    
                    if Config.KeySystem.SaveKey then
                        local folder = Config.Folder or Config.Title
                        writefile(folder .. "/" .. Filename .. ".key", tostring(Key))
                    end
                    
                    task.wait(.4)
                    func(true)
                else
                    local OldColor = TextBoxHolder.UIStroke.Color
                    local OldBGColor = TextBoxHolder.BackgroundColor3
                    Tween(TextBoxHolder.UIStroke, 0.1, {Color = Color3.fromHex("#ff1e1e"), Transparency= .65}):Play()
                    Tween(TextBoxHolder, 0.1, {BackgroundColor3= Color3.fromHex("#ff1e1e"), Transparency= .8}):Play()
                    
                    task.wait(.5)
                    
                    Tween(TextBoxHolder.UIStroke, 0.15, {Color = OldColor, Transparency = .9}):Play()
                    Tween(TextBoxHolder, 0.15, {BackgroundColor3 = OldBGColor, Transparency = .95}):Play()
                end
            end,
            Variant = "Primary"
        }
    }
    
    if not Config.KeySystem.URL then
        table.remove(KeySystemButtons, 1)
    end
    
    local function CreateButton(Title, Icon, Callback, Variant)
        local ButtonFrame = New("TextButton", {
            --Size = UDim2.new(0,0,1,0),
            Size = UDim2.new(
                (1 / #KeySystemButtons), 
                -(((#KeySystemButtons - 1) * 9) / #KeySystemButtons), 
                1, 
                0
            ),
            Parent = ButtonsContainer,
            ThemeTag = {
                BackgroundColor3 = "Text",
            },
            BackgroundTransparency = Variant == "Primary" and .1 or .95
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0,11),
            }),
            New("UIStroke", {
                Thickness = 1.2,
                ThemeTag = {
                    Color = "Text",
                },
                Transparency = Variant == "Primary" and .9 or .25,
            }),
            New("Frame", {
                Size = UDim2.new(1,0,1,0),
                ThemeTag = {
                    BackgroundColor3 = Variant == "Primary" and "Accent" or "Text"
                },
                BackgroundTransparency = 1 -- .9
            }, {
                New("UIPadding", {
                    PaddingLeft = UDim.new(0,11),
                    PaddingRight = UDim.new(0,11),
                }),
                New("UICorner", {
                    CornerRadius = UDim.new(0,11),
                }),
                -- New("UIListLayout", {
                --     FillDirection = "Horizontal",
                --     Padding = UDim.new(0,9),
                --     VerticalAlignment = "Center",
                --     HorizontalAlignment = "Center",
                -- }),
                New("ImageLabel", {
                    Image = Creator.Icon(Icon)[1],
                    ImageRectSize = Creator.Icon(Icon)[2].ImageRectSize,
                    ImageRectOffset = Creator.Icon(Icon)[2].ImageRectPosition,
                    Size = UDim2.new(0,24-3,0,24-3),
                    Position = UDim2.new(0,0,0.5,0),
                    AnchorPoint = Vector2.new(0,0.5),
                    BackgroundTransparency = 1,
                    ThemeTag = {
                        ImageColor3 = Variant == "Secondary" and "Text" or "Accent",
                    }
                }),
                New("TextLabel", {
                    BackgroundTransparency = 1,
                    FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                    Text = Title,
                    AnchorPoint = Vector2.new(1,0.5),
                    Position = UDim2.new(1,0,0.5,0),
                    ThemeTag = {
                        TextColor3 = Variant == "Secondary" and "Text" or "Accent",
                    },
                    AutomaticSize = "XY",
                    TextSize = 18,
                })
            })
        })
        
        ButtonFrame.MouseEnter:Connect(function()
            Tween(ButtonFrame.Frame, .1, {BackgroundTransparency = .9}):Play()
        end)
        ButtonFrame.MouseLeave:Connect(function()
            Tween(ButtonFrame.Frame, .1, {BackgroundTransparency = 1}):Play()
        end)
        ButtonFrame.MouseButton1Up:Connect(function()
            Callback()
        end)
    end
    
    local MainFrame = New("Frame", {
        --AutomaticSize = "XY",
        Size = UDim2.new(1,0,1,0),
        BackgroundTransparency = 1,
        Parent = KeyDialog.UIElements.Main
    }, {
        New("Frame", {
            --AutomaticSize = "XY",
            Size = UDim2.new(1,0,1,0),
            BackgroundTransparency = 1,
        }, {
            New("UIListLayout", {
                Padding = UDim.new(0,16),
                FillDirection = "Vertical",
            }),
            TitleContainer,
            TextBoxHolder,
            NoteText,
            ButtonsContainer
        }),
        CloseButton
    })
    
    for _, values in next, KeySystemButtons do
        CreateButton(values.Title, values.Icon, values.Callback, values.Variant)
    end
    
    -- MainFrame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
    --     TextBoxHolder.Size = UDim2.new(0,MainFrame.AbsoluteSize.X-1,0,38)
    --     ButtonsContainer.Size = UDim2.new(0,MainFrame.AbsoluteSize.X-1,0,42)
    --     CloseButton.Position = UDim2.new(0,MainFrame.AbsoluteSize.X-1,0,0)
    -- end)
    
    TitleContainer:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        KeyDialog.UIElements.Main.Size = UDim2.new(
            0,
            TitleContainer.AbsoluteSize.X +24+24+24+24+9,
            0,
            0
        )
    end)
    
    KeyDialog:Open()
end

return KeySystem