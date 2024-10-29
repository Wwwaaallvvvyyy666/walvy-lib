--[[

    Credits: dawid 

]]

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Icons = require("./Icons")

local Creator = {
    Font = "rbxassetid://12187365364", -- Inter
    Theme = nil,
    Objects = {},
    DefaultProperties = {
        ScreenGui = {
            ResetOnSpawn = false,
            ZIndexBehavior = "Sibling",
        },
        CanvasGroup = {
            BorderSizePixel = 0,
            BackgroundColor3 = Color3.new(1,1,1),
        },
        Frame = {
            BorderSizePixel = 0,
            BackgroundColor3 = Color3.new(1,1,1),
        },
        TextLabel = {
            BackgroundColor3 = Color3.new(1,1,1),
            BorderSizePixel = 0,
            Text = "",
            TextColor3 = Color3.new(1,1,1),
            TextSize = 14,
        }, TextButton = {
            BackgroundColor3 = Color3.new(1,1,1),
            BorderSizePixel = 0,
            Text = "",
            AutoButtonColor= false,
            TextColor3 = Color3.new(1,1,1),
            TextSize = 14,
        },
        TextBox = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			ClearTextOnFocus = false,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			TextSize = 14,
		},
		ImageLabel = {
			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
		},
		ImageButton = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
			AutoButtonColor = false,
		},
		UIListLayout = {
		    SortOrder = "LayoutOrder",
		}
    }
}

function Creator.SetTheme(Theme)
    Creator.Theme = Theme
end

local function ApplyCustomProps(Object, Props)
	if Props.ThemeTag then
		Creator.AddThemeObject(Object, Props.ThemeTag)
	end
end

function Creator.GetThemeProperty(Property, Theme)
    return Theme[Property]
end

function Creator.AddThemeObject(Object, Properties)
	local Index = #Creator.Objects + 1
	local Data = {
		Object = Object,
		Properties = Properties,
		Index = Index,
	}

	Creator.Objects[Object] = Data
	Creator.UpdateTheme()
	return Object
end

function Creator.UpdateTheme()
	for Instance, Object in next, Creator.Objects do
		for Property, ColorIdx in next, Object.Properties do
		    Creator.Tween(Instance, 0.08, {[Property] = Color3.fromHex(Creator.GetThemeProperty(ColorIdx, Creator.Theme))}):Play()
		end
	end
end

function Creator.Icon(Icon)
    return Icons.assets["lucide-" .. Icon]
end

function Creator.New(Name, Properties, Children)
    local Object = Instance.new(Name)
    
    for Name, Value in next, Creator.DefaultProperties[Name] or {} do
	    Object[Name] = Value
    end
    
    for Name, Value in next, Properties or {} do
        if Name ~= "ThemeTag" then
		    Object[Name] = Value
	    end
    end
    
    for _, Child in next, Children or {} do
	    Child.Parent = Object
    end
    
    ApplyCustomProps(Object, Properties)
    return Object
end

function Creator.Tween(Object, Time, Properties, ...)
    return TweenService:Create(Object, TweenInfo.new(Time, ...), Properties)
end

function Creator.Drag(UIElement)
    local dragging, dragInput, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        UIElement.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end

    UIElement.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging  = true
            dragStart = input.Position
            startPos  = UIElement.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UIElement.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

return Creator