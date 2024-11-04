local Creator = require("../Creator")
local New = Creator.New

local Element = {}

function Element:New(Config)
    local Button = {
        __type = "Button",
        Title = Config.Title or "Button",
        Desc = Config.Desc or nil,
        Callback = Config.Callback or function() end,
        UIElements = {}
    }
    Button.ButtonFrame = require("../Components/Element")({
        Title = Button.Title,
        Desc = Button.Desc,
        Parent = Config.Parent,
        Theme = Config.Theme,
        TextOffset = 20,
        Hover = true,
    })
    
    Button.UIElements.ButtonIcon = New("ImageLabel",{
        Image = Creator.Icon("fingerprint"),
        BackgroundTransparency = 1,
        Parent = Button.ButtonFrame.UIElements.Main,
        Size = UDim2.new(0,20,0,20),
        AnchorPoint = Vector2.new(1,0.5),
        Position = UDim2.new(1,0,0.5,0),
        ImageColor3 = Color3.fromHex(Config.Theme.Text),
        ThemeTag = {
            ImageColor3 = "Text"
        }
    })
    Button.ButtonFrame.UIElements.Main.MouseButton1Click:Connect(function()
        task.spawn(function()
            pcall(Button.Callback)
        end)
    end)
    return Button.__type, Button
end

return Element