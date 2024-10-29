local Creator = require("../Creator")
local New = Creator.New

local Element = {}

local HoldingSlider = false

function Element:New(Config)
    local Slider = {
        __type = "Slider",
        Title = Config.Title or "Slider",
        Desc = Config.Desc or nil,
        Value = Config.Value or {},
        Step = Config.Step or 1,
        Callback = Config.Callback or function() end,
        UIElements = {},
        IsFocusing = false,
    }
    local isTouch
    local moveconnection
    local releaseconnection
    local Value = Slider.Value.Default or Slider.Value.Min or 0
    
    local LastValue = Value
    local delta = (Value - (Slider.Value.Min or 0)) / ((Slider.Value.Max or 100) - (Slider.Value.Min or 0))

    Slider.SliderFrame = require("../Components/Element")({
        Title = Slider.Title,
        Desc = Slider.Desc,
        Parent = Config.Parent,
        Theme = Config.Theme,
        TextOffset = 50,
        Hover = false,
    })
    
    Slider.UIElements.SliderIcon = New("Frame", {
        BackgroundTransparency = .9,
        BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
        ThemeTag = {
            BackgroundColor3 = "Text",
        },
        Size = UDim2.new(0, 20*4, 0, 3),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5)
    }, {
        New("UICorner", {
            CornerRadius = UDim.new(1, 0),
        }),
        New("Frame", {
            Size = UDim2.new(delta, 0, 1, 0),
            BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                BackgroundColor3 = "Text",
            },
            BackgroundTransparency = .3,
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(1, 0),
            }),
            New("Frame", {
                Size = UDim2.new(0, 4*3, 0, 4*3),
                Position = UDim2.new(1, 0, 0.5, 0),
                AnchorPoint = Vector2.new(0.5, 0.5),
                BackgroundColor3 = Color3.fromHex(Config.Theme.Text),
                ThemeTag = {
                    BackgroundColor3 = "Text",
                },
            }, {
                New("UICorner", {
                    CornerRadius = UDim.new(1, 0),
                }),
            })
        })
    })
    
    Slider.UIElements.SliderContainer = New("Frame", {
        Size = UDim2.new(0, 0, 0, 0),
        AutomaticSize = "XY",
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(1, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Parent = Slider.SliderFrame.UIElements.Main,
    }, {
        New("UIListLayout", {
            Padding = UDim.new(0, 8),
            FillDirection = "Horizontal",
            VerticalAlignment = "Center",
        }),
        Slider.UIElements.SliderIcon,
        New("TextLabel", {
            Text = tostring(Value),
            TextColor3 = Color3.fromHex(Config.Theme.Text),
            ThemeTag = {
                TextColor3 = "Text"
            },
            TextTransparency = .4,
            AutomaticSize = "XY",
            TextSize = 15,
            FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
            BackgroundTransparency = 1,
            LayoutOrder = -1,
        })
    })
    
    Slider.UIElements.SliderContainer.InputBegan:Connect(function(input)
        if not Slider.IsFocusing and not HoldingSlider and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            isTouch = (input.UserInputType == Enum.UserInputType.Touch)
            
            Slider.SliderFrame.UIElements.Main.Parent.Parent.ScrollingEnabled = false
            HoldingSlider = true
            
            moveconnection = game:GetService("RunService").RenderStepped:Connect(function()
                local inputPosition
                if isTouch then
                    inputPosition = input.Position.X
                else
                    inputPosition = game:GetService("UserInputService"):GetMouseLocation().X
                end
    
                local delta = math.clamp((inputPosition - Slider.UIElements.SliderIcon.AbsolutePosition.X) / Slider.UIElements.SliderIcon.Size.X.Offset, 0, 1)
                Value = math.floor((Slider.Value.Min + delta * (Slider.Value.Max - Slider.Value.Min)) / Slider.Step + 0.5) * Slider.Step

                if Value ~= LastValue then
                    Slider.UIElements.SliderIcon.Frame.Size = UDim2.new(delta, 0, 1, 0)
                    Slider.UIElements.SliderContainer.TextLabel.Text = Value
                    LastValue = Value
                    task.spawn(Slider.Callback, Value)
                end
            end)
            
            releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(endInput)
                if (endInput.UserInputType == Enum.UserInputType.MouseButton1 or endInput.UserInputType == Enum.UserInputType.Touch) and input == endInput then
                    moveconnection:Disconnect()
                    releaseconnection:Disconnect()
                    HoldingSlider = false
                    
                    Slider.SliderFrame.UIElements.Main.Parent.Parent.ScrollingEnabled = true
                end
            end)
        end
    end)
    
    return Slider
end

return Element