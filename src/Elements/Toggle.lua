local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local Element = {}

function Element:New(Config)
    local Toggle = {
        __type = "Toggle",
        Title = Config.Title or "Toggle",
        Desc = Config.Desc or nil,
        Value = Config.Value or false,
        Callback = Config.Callback or function() end,
        UIElements = {}
    }
    Toggle.ToggleFrame = require("../Components/Element")({
        Title = Toggle.Title,
        Desc = Toggle.Desc,
        Parent = Config.Parent,
        Theme = Config.Theme,
        TextOffset = 44,
        Hover = true,
    })
    
    Toggle.UIElements.Toggle = New("Frame",{
        BackgroundTransparency = .95,
        BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
        ThemeTag = {
            BackgroundColor3 = "Text"
        },
        Parent = Toggle.ToggleFrame.UIElements.Main,
        Size = UDim2.new(0,20*2.2,0,24),
        AnchorPoint = Vector2.new(1,0.5),
        Position = UDim2.new(1,0,0.5,0)
    }, {
        New("UICorner", {
            CornerRadius = UDim.new(1,0)
        }),
        New("UIStroke", {
            Color = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                Color = "Text",
            },
            Transparency = .93,
            Thickness = 1,
        }),
        New("Frame", {
            Size = UDim2.new(0,18,0,18),
            Position = UDim2.new(0,3,0.5,0),
            AnchorPoint = Vector2.new(0,0.5),
            BackgroundTransparency = 0.15,
            BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                BackgroundColor3 = "Text"
            },
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(1,0)
            }),
            New("Frame", {
                Size = UDim2.new(1,0,1,0),
                BackgroundColor3 = Color3.fromHex(Config.Theme.Text2),
                BackgroundTransparency = 1,
                ThemeTag = {
                    BackgroundColor3 = "Text2"
                },
            }, {
                New("UICorner", {
                    CornerRadius = UDim.new(1,0)
                }),
            })
        })
    })

    function Toggle:SetValue(Toggled)
        if not Toggled then
            Tween(Toggle.UIElements.Toggle.Frame, 0.1, {Position = UDim2.new(1,-18-3,0.5,0), BackgroundTransparency = 1}):Play()
            Tween(Toggle.UIElements.Toggle.Frame.Frame, 0.1, {BackgroundTransparency = .15}):Play()
            Tween(Toggle.UIElements.Toggle, 0.1, {BackgroundTransparency = .15}):Play()
            
            task.spawn(function()
                pcall(Toggle.Callback, Toggled)
            end)
        else
            Tween(Toggle.UIElements.Toggle.Frame, 0.1, {Position = UDim2.new(0,3,0.5,0), BackgroundTransparency = .15}):Play()
            Tween(Toggle.UIElements.Toggle.Frame.Frame, 0.1, {BackgroundTransparency = 1}):Play()
            Tween(Toggle.UIElements.Toggle, 0.1, {BackgroundTransparency = .95}):Play()
            
            task.spawn(function()
                pcall(Toggle.Callback, Toggled)
            end)
        end
    end

    local Toggled = Config.Value
    Toggle:SetValue(Toggled)
    Toggle.ToggleFrame.UIElements.Main.MouseButton1Click:Connect(function()
        Toggle:SetValue(Toggled)
        Toggled = not Toggled
    end) 
    
    return Toggle.__type, Toggle
end

return Element