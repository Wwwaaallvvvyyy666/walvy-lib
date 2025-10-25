local Creator = require("../../modules/Creator")

return function(Config)
    local New = Creator.New

    local Window = {}

    local Main = New("Frame", {
        Name = "WalvyBoxUI",
        Parent = Config.Parent,
        BackgroundColor3 = Color3.fromRGB(25, 25, 25),
        BorderSizePixel = 2,
        BorderColor3 = Color3.fromRGB(255, 0, 0),
        Size = UDim2.new(0, 420, 0, 320),
        Position = UDim2.new(0.5, -210, 0.5, -160),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Active = true,
        Draggable = true
    })

    local Title = New("TextLabel", {
        Parent = Main,
        BackgroundColor3 = Color3.fromRGB(45, 45, 45),
        Size = UDim2.new(1, 0, 0, 30),
        Text = Config.Title or "Walvy Box UI",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.SourceSansBold,
        TextSize = 16
    })

    local Toggle = New("TextButton", {
        Parent = Main,
        BackgroundColor3 = Color3.fromRGB(60, 60, 60),
        Size = UDim2.new(0, 150, 0, 40),
        Position = UDim2.new(0, 20, 0, 60),
        Text = "Start",
        TextColor3 = Color3.fromRGB(255, 255, 255),
        Font = Enum.Font.SourceSans,
        TextSize = 14
    })

    local toggled = false
    Toggle.MouseButton1Click:Connect(function()
        toggled = not toggled
        Toggle.Text = toggled and "Stop" or "Start"
        Toggle.BackgroundColor3 = toggled and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(60, 60, 60)
    end)

    Window.UIElements = { Main = Main, Toggle = Toggle }
    return Window
end
