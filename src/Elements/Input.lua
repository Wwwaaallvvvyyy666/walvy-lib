local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local Element = {
    UICorner = 6,
    UIPadding = 8,
}

function Element:New(Config)
    local Input = {
        __type = "Input",
        Title = Config.Title or "Input",
        Desc = Config.Desc or nil,
        PlaceholderText = Config.PlaceholderText or "Enter Text...",
        Value = Config.Value or "",
        Callback = Config.Callback or function() end,
        ClearTextOnFocus = Config.ClearTextOnFocus or false,
        UIElements = {},
    }
    Input.InputFrame = require("../Components/Element")({
        Title = Input.Title,
        Desc = Input.Desc,
        Parent = Config.Parent,
        Theme = Config.Theme,
        TextOffset = 70,
        Hover = false,
    })
    
    Input.UIElements.Input = New("Frame",{
        BackgroundTransparency = .95,
        BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
        Parent = Input.InputFrame.UIElements.Main,
        Size = UDim2.new(0,30*5,0,30),
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
            ClearTextOnFocus = Input.ClearTextOnFocus,
            Text = Input.Value,
            TextColor3 = Color3.fromHex(Config.Theme.Text),
            TextSize = 15,
            ClipsDescendants = true,
            TextXAlignment = "Left",
            FontFace = Font.new(Creator.Font),
            PlaceholderText = Input.PlaceholderText,
            ThemeTag = {
                TextColor3 = "Text",
                PlaceholderColor3 = "PlaceholderText",
            }
        }),
        New("UICorner", {
            CornerRadius = UDim.new(0,Element.UICorner)
        }),
        New("UIStroke", {
            Color = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                Color = "Text",
            },
            Transparency = .93,
            ApplyStrokeMode = "Border",
            Thickness = 1,
        }),
        New("UIPadding", {
            PaddingTop = UDim.new(0,Element.UIPadding),
            PaddingLeft = UDim.new(0,Element.UIPadding),
            PaddingRight = UDim.new(0,Element.UIPadding),
            PaddingBottom = UDim.new(0,Element.UIPadding),
        })
    })
    
    Input.UIElements.Input.TextBox.Focused:Connect(function()
        Tween(Input.UIElements.Input.UIStroke, 0.1, {Transparency = .8}):Play()
    end)
    Input.UIElements.Input.TextBox.FocusLost:Connect(function()
        Tween(Input.UIElements.Input.UIStroke, 0.1, {Transparency = .93}):Play()
        pcall(Input.Callback, Input.UIElements.Input.TextBox.Text)
    end)

    
    return Input.__type, Input
end

return Element