local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local Element = {}

function Element:New(Config)
    local Section = {
        __type = "Section",
        Title = Config.Title or "Section",
        UIElements = {},
    }
    
    Section.UIElements.Main = New("TextLabel", {
        BackgroundTransparency = 1,
        TextXAlignment = "Left",
        AutomaticSize = "Y",
        TextSize = 17,
        ThemeTag = {
            TextColor3 = "Text",
        },
        FontFace = Font.new(Creator.Font, Enum.FontWeight.SemiBold),
        Parent = Config.Parent,
        Size = UDim2.new(1,0,0,0),
        Text = Section.Title,
    }, {
        New("UIPadding", {
            PaddingTop = UDim.new(0,4),
            PaddingBottom = UDim.new(0,2),
        })
    })
    
    return Section.__type, Section
end

return Element