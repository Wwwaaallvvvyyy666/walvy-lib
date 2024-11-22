local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

return function(Config)
    local Element = {
        Title = Config.Title or "Element",
        Desc = Config.Desc or nil,
        Hover = Config.Hover,
        UIPadding = 12,
        UIElements = {}
    }
    
    local CanHover = true
    
    Element.UIElements.Main = New("TextButton", {
        Size = UDim2.new(1,0,0,0),
        AutomaticSize = "Y",
        BackgroundTransparency = 0.98,
        BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
        ThemeTag = {
            BackgroundColor3 = "Text"
        }
    }, {
        New("UICorner", {
            CornerRadius = UDim.new(0,6),
        }),
        New("Frame", {
            Size = UDim2.new(1,0,0,0),
            AutomaticSize = "XY",
            --AnchorPoint = Vector2.new(0,0.5),
            --Position = UDim2.new(0,0,0.5,0),
            BackgroundTransparency = 1,
            Name = "Title"
        }, {
            New("UIListLayout", {
                Padding = UDim.new(0,6),
                --VerticalAlignment = "Left",
            }),
            New("TextLabel", {
                Text = Element.Title,
                TextColor3 = Color3.fromHex(Config.Theme.Text),
                ThemeTag = {
                    TextColor3 = "Text"
                },
                TextSize = 15, 
                TextWrapped = true,
                RichText = true,
                Name = "Title",
                TextXAlignment = "Left",
                Size = UDim2.new(1,-Config.TextOffset,0,0),
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                BackgroundTransparency = 1,
                AutomaticSize = "Y"
            })
        }),
        New("Frame", {
            Size = UDim2.new(1,Element.UIPadding*2,1,Element.UIPadding*2+6),
            BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                BackgroundColor3 = "Text"
            },
            Position = UDim2.new(0.5,0,0.5,0),
            AnchorPoint = Vector2.new(0.5,0.5),
            BackgroundTransparency = 1,
            Name = "Highlight"
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0,6),
            }),
        }),
        New("Frame", {
            Size = UDim2.new(1,Element.UIPadding*2,1,Element.UIPadding*2+6),
            BackgroundColor3 = Color3.new(0,0,0),
            Position = UDim2.new(0.5,0,0.5,0),
            AnchorPoint = Vector2.new(0.5,0.5),
            BackgroundTransparency = 1,
            ZIndex = 999999,
            Name = "Lock"
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0,6),
            }),
            New("ImageLabel", {
                Image = "rbxassetid://120011858138977",
                AnchorPoint = Vector2.new(0.5,0.5),
                Position = UDim2.new(0.5,0,0.5,0),
                Size = UDim2.new(0,26,0,26),
                ImageTransparency = 1,
                BackgroundTransparency = 1,
            })
        }),
        New("UIPadding", {
            PaddingTop = UDim.new(0,Element.UIPadding+3),
            PaddingLeft = UDim.new(0,Element.UIPadding),
            PaddingRight = UDim.new(0,Element.UIPadding),
            PaddingBottom = UDim.new(0,Element.UIPadding+3),
        }),
        New("UIStroke", {
            Thickness = 0.6,
            Color = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                Color = "Text",
            },
            Transparency = 0.94,
            ApplyStrokeMode = "Border",
        })
    })

    -- Element.UIElements.Main.Title.Title:GetPropertyChangedSignal("TextBounds"):Connect(function()
    --     Element.UIElements.Main.Title.Title.Size = UDim2.new(1,-Config.TextOffset,0,Element.UIElements.Main.Title.Title.TextBounds.Y)
    -- end)

    Element.UIElements.MainContainer = New("Frame", {
        Size = UDim2.new(1,0,0,0),
        AutomaticSize = "Y",
        BackgroundTransparency = 1,
        Parent = Config.Parent,
    }, {
        Element.UIElements.Main,
        New("UIPadding", {
            PaddingTop = UDim.new(0,2),
            PaddingLeft = UDim.new(0,2),
            PaddingRight = UDim.new(0,2),
            PaddingBottom = UDim.new(0,2),
        })
    })
    
    -- Element.UIElements.Main.Title.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    --     Element.UIElements.Main.Size = UDim2.new(
    --         1,
    --         0,
    --         0,
    --         Element.UIElements.Main.Title.UIListLayout.AbsoluteContentSize.Y + (Element.UIPadding+3)*2
    --     )
    --     Element.UIElements.Main.Title.Size = UDim2.new(
    --         1,
    --         0,
    --         0,
    --         Element.UIElements.Main.Title.UIListLayout.AbsoluteContentSize.Y
    --     )
    --     Element.UIElements.MainContainer.Size = UDim2.new(
    --         1,
    --         0,
    --         0,
    --         Element.UIElements.Main.AbsoluteSize.Y
    --     )
    -- end)
    
    local Desc
    
    if Element.Desc then
        Desc = New("TextLabel", {
            Text = Element.Desc,
            TextColor3 = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                TextColor3 = "Text"
            },
            TextTransparency = 0.4,
            TextSize = 15,
            TextWrapped = true,
            RichText = true,
            TextXAlignment = "Left",
            Size = UDim2.new(1,-Config.TextOffset,0,0),
            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
            BackgroundTransparency = 1,
            AutomaticSize = "Y",
            Parent = Element.UIElements.Main.Title
        })
        -- Desc:GetPropertyChangedSignal("TextBounds"):Connect(function()
        --     Desc.Size = UDim2.new(1,-Config.TextOffset,0,Desc.TextBounds.Y)
        -- end)
    else
        Element.UIElements.Main.Title.AnchorPoint = Vector2.new(0,0.5)
        Element.UIElements.Main.Title.Position = UDim2.new(0,0,0.5,0)
    end
    
    if Element.Hover then
        Element.UIElements.Main.MouseEnter:Connect(function()
            if CanHover then
                Tween(Element.UIElements.Main.Highlight, 0.08, {BackgroundTransparency = 0.97}):Play()
            end
        end)
        Element.UIElements.Main.MouseLeave:Connect(function()
            if CanHover then
                Tween(Element.UIElements.Main.Highlight, 0.08, {BackgroundTransparency = 1}):Play()
            end
        end)
    end
    
    function Element:SetTitle(Title)
        Element.UIElements.Main.Title.Title.Text = Title
    end
    function Element:SetDesc(Title)
        if Desc then
            Desc.Text = Title
        else
            Desc = New("TextLabel", {
                Text = Title,
                TextColor3 = Color3.fromHex(Config.Theme.Text),
                ThemeTag = {
                    TextColor3 = "Text"
                },
                TextTransparency = 0.4,
                TextSize = 15,
                TextWrapped = true,
                TextXAlignment = "Left",
                Size = UDim2.new(1,-Config.TextOffset,0,0),
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
                BackgroundTransparency = 1,
                AutomaticSize = "Y",
                Parent = Element.UIElements.Main.Title
            })
            -- Desc:GetPropertyChangedSignal("TextBounds"):Connect(function()
            --     Desc.Size = UDim2.new(1,-Config.TextOffset,0,Desc.TextBounds.Y)
            -- end)
        end
    end
    function Element:Lock()
        Tween(Element.UIElements.Main.Lock, .08, {BackgroundTransparency = .6}):Play()
        Tween(Element.UIElements.Main.Lock.ImageLabel, .08, {ImageTransparency = 0}):Play()
        Element.UIElements.Main.Lock.Active = true
        CanHover = false
    end
    function Element:Unlock()
        Tween(Element.UIElements.Main.Lock, .08, {BackgroundTransparency = 1}):Play()
        Tween(Element.UIElements.Main.Lock.ImageLabel, .08, {ImageTransparency = 1}):Play()
        Element.UIElements.Main.Lock.Active = false
        CanHover = true
    end
    
    return Element
end