local Creator = require("../Creator")
local New = Creator.New
local Tween = Creator.Tween

local TabModule = {
    Window = nil,
    Tabs = {}, 
    Containers = {},
    SelectedTab = nil,
    TabCount = 0,
}

function TabModule.Init(Window)
    TabModule.Window = Window
    return TabModule
end

function TabModule.New(Config)
    local Tab = {
        Title = Config.Title or "Tab",
        Icon = Config.Icon,
        Selected = false,
        Index = nil,
        UIElements = {},
        Elements = {},
    }
    
    local Window = TabModule.Window
    
    TabModule.TabCount = TabModule.TabCount + 1
	local TabIndex = TabModule.TabCount
	Tab.Index = TabIndex
	
	Tab.UIElements.Main = New("TextButton", {
	    BackgroundTransparency = 1,
	    Size = UDim2.new(1,0,0,0),
	    AutomaticSize = "Y",
	    Parent = Config.Parent
	}, {
	    New("UIListLayout", {
	        SortOrder = "LayoutOrder",
	        Padding = UDim.new(0,10),
	        FillDirection = "Horizontal",
	        VerticalAlignment = "Center",
	    }),
	    New("TextLabel", {
	        Text = Tab.Title,
	        TextColor3 = Color3.fromHex(TabModule.Window.Theme.Text),
	        ThemeTag = {
	            TextColor3 = "Text"
	        },
	        TextTransparency = 0.4,
	        TextSize = 15,
	        Size = UDim2.new(1,0,0,0),
	        FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
	        TextWrapped = true,
	        AutomaticSize = "Y",
	        LayoutOrder = 2,
	        TextXAlignment = "Left",
	        BackgroundTransparency = 1,
	    }),
	    New("UIPadding", {
	        PaddingTop = UDim.new(0,6),
	        PaddingBottom = UDim.new(0,6),
	    })
	})
	if Tab.Icon and Creator.Icon(Tab.Icon) then
        local Icon = New("ImageLabel", {
            ImageTransparency = 0.4,
            Image = Creator.Icon(Tab.Icon),
            Size = UDim2.new(0,20,0,20),
            LayoutOrder = 1,
            ImageColor3 = Color3.fromHex(TabModule.Window.Theme.Text),
            ThemeTag = {
                ImageColor3 = "Text"
            },
            BackgroundTransparency = 1,
            Parent = Tab.UIElements.Main,
        })
        Tab.UIElements.Main.TextLabel.Size = UDim2.new(1,-22,0,0)
	end
	
	Tab.UIElements.ContainerFrame = New("ScrollingFrame", {
        Size = UDim2.new(1,0,1,0),
        BackgroundTransparency = 1,
        ScrollBarThickness = 0,
        CanvasSize = UDim2.new(0,0,0,0),
        AutomaticCanvasSize = "Y",
        Visible = false,
        ScrollingDirection = "Y",
        Parent = Window.UIElements.MainBar
    }, {
        New("UIPadding", {
            PaddingTop = UDim.new(0,Window.UIPadding),
            PaddingLeft = UDim.new(0,Window.UIPadding),
            PaddingRight = UDim.new(0,Window.UIPadding),
            PaddingBottom = UDim.new(0,Window.UIPadding),
        }),
        New("UIListLayout", {
            SortOrder = "LayoutOrder",
            Padding = UDim.new(0,6)
        })
    })

    TabModule.Containers[TabIndex] = Tab.UIElements.ContainerFrame
	TabModule.Tabs[TabIndex] = Tab
	
	Tab.UIElements.Main.MouseButton1Click:Connect(function()
	    TabModule:SelectTab(Tab)
	end)
	
	-- WTF
	
    function Tab:Paragraph(ElementConfig)
        task.wait(0.01)
        local Paragraph = require("../Components/Element")({
            Title = ElementConfig.Title or "Paragraph",
            Desc = ElementConfig.Desc,
            Parent = Tab.UIElements.ContainerFrame,
            Theme = TabModule.Window.Theme,
            TextOffset = 0,
            Hover = false,
        })
        Tab.Elements["Paragraph"] = Paragraph
        return Paragraph
    end
    function Tab:Button(ElementConfig)
        task.wait(0.01)
        local Button, Content = require("../Elements/Button"):New({
            Title = ElementConfig.Title,
            Desc = ElementConfig.Desc,
            Callback = ElementConfig.Callback,
            Theme = TabModule.Window.Theme,
            Parent = Tab.UIElements.ContainerFrame
        })
        Tab.Elements[Button] = Content
        
        function Content:SetTitle(Title)
            Content.ButtonFrame:SetTitle(Title)
        end
        function Content:SetDesc(Title)
            Content.ButtonFrame:SetDesc(Title)
        end
        
        return Content
    end
    function Tab:Toggle(ElementConfig)
        task.wait(0.01)
        local Toggle, Content = require("../Elements/Toggle"):New({
            Title = ElementConfig.Title,
            Desc = ElementConfig.Desc,
            Value = ElementConfig.Value,
            Callback = ElementConfig.Callback,
            Theme = TabModule.Window.Theme,
            Parent = Tab.UIElements.ContainerFrame
        })
        Tab.Elements[Toggle] = Content
        
        function Content:SetTitle(Title)
            Content.ToggleFrame:SetTitle(Title)
        end
        function Content:SetDesc(Title)
            Content.ToggleFrame:SetDesc(Title)
        end
        
        return Content
    end
    function Tab:Slider(ElementConfig)
        task.wait(0.01)
        local Slider, Content = require("../Elements/Slider"):New({
            Title = ElementConfig.Title,
            Desc = ElementConfig.Desc,
            Step = ElementConfig.Step,
            Value = ElementConfig.Value,
            Callback = ElementConfig.Callback,
            Theme = TabModule.Window.Theme,
            Parent = Tab.UIElements.ContainerFrame,
        })
        Tab.Elements[Slider] = Content
        
        function Content:SetTitle(Title)
            Content.SliderFrame:SetTitle(Title)
        end
        function Content:SetDesc(Title)
            Content.SliderFrame:SetDesc(Title)
        end
        
        return Content
    end
    function Tab:Keybind(ElementConfig)
        task.wait(0.01)
        local Keybind, Content = require("../Elements/Keybind"):New({
            Title = ElementConfig.Title,
            Desc = ElementConfig.Desc,
            Value = ElementConfig.Value,
            Callback = ElementConfig.Callback,
            Theme = TabModule.Window.Theme,
            Parent = Tab.UIElements.ContainerFrame,
        })
        Tab.Elements[Keybind] = Content
        
        function Content:SetTitle(Title)
            Content.KeybindFrame:SetTitle(Title)
        end
        function Content:SetDesc(Title)
            Content.KeybindFrame:SetDesc(Title)
        end
        
        return Content
    end
    function Tab:Input(ElementConfig)
        task.wait(0.01)
        local Input, Content = require("../Elements/Input"):New({
            Title = ElementConfig.Title,
            Desc = ElementConfig.Desc,
            Value = ElementConfig.Value,
            PlaceholderText = ElementConfig.PlaceholderText,
            ClearTextOnFocus = ElementConfig.ClearTextOnFocus,
            Callback = ElementConfig.Callback,
            Theme = TabModule.Window.Theme,
            Parent = Tab.UIElements.ContainerFrame,
        })
        Tab.Elements[Input] = Content
        
        function Content:SetTitle(Title)
            Content.InputFrame:SetTitle(Title)
        end
        function Content:SetDesc(Title)
            Content.InputFrame:SetDesc(Title)
        end
        
        return Content
    end
    function Tab:Dropdown(ElementConfig)
        task.wait(0.01)
        local Dropdown, Content = require("../Elements/Dropdown"):New({
            Title = ElementConfig.Title,
            Desc = ElementConfig.Desc,
            AllowNone = ElementConfig.AllowNone,
            Value = ElementConfig.Value,
            Values = ElementConfig.Values,
            Multi = ElementConfig.Multi,
            Callback = ElementConfig.Callback,
            Theme = TabModule.Window.Theme,
            Parent = Tab.UIElements.ContainerFrame,
            Window = Window
        })
        Tab.Elements[Dropdown] = Content
        
        function Content:SetTitle(Title)
            Content.DropdownFrame:SetTitle(Title)
        end
        function Content:SetDesc(Title)
            Content.DropdownFrame:SetDesc(Title)
        end
        
        return Content
    end
    function Tab:Colorpicker(ElementConfig)
        task.wait(0.01)
        local Dropdown, Content = require("../Elements/Colorpicker"):New({
            Title = ElementConfig.Title,
            Desc = ElementConfig.Desc,
            Default = ElementConfig.Default,
            Transparency = ElementConfig.Transparency,
            Callback = ElementConfig.Callback,
            Parent = Tab.UIElements.ContainerFrame,
            Theme = TabModule.Window.Theme,
            Window = Window
        })
        Tab.Elements[Dropdown] = Content
        
        function Content:SetTitle(Title)
            Content.ColorpickerFrame:SetTitle(Title)
        end
        function Content:SetDesc(Title)
            Content.ColorpickerFrame:SetDesc(Title)
        end
        
        return Content
    end
    function Tab:Section(ElementConfig)
        task.wait(0.01)
        local Section, Content = require("../Elements/Section"):New({
            Title = ElementConfig.Title,
            TextXAlignment = ElementConfig.TextXAlignment,
            TextSize = ElementConfig.TextSize,
            Parent = Tab.UIElements.ContainerFrame,
        })
        Tab.Elements[Section] = Content
        return Content
    end

	
	task.spawn(function()
        local Empty = New("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.new(1,0,1,-Window.UIElements.Main.Main.Topbar.AbsoluteSize.Y),
            Parent = Tab.UIElements.ContainerFrame
        }, {
            New("UIListLayout", {
                Padding = UDim.new(0,8),
                SortOrder = "LayoutOrder",
                VerticalAlignment = "Center",
                HorizontalAlignment = "Center",
                FillDirection = "Vertical",
            }), 
            New("ImageLabel", {
                Size = UDim2.new(0,48,0,48),
                Image = Creator.Icon("frown"),
                ThemeTag = {
                    ImageColor3 = "Text"
                },
                BackgroundTransparency = 1,
                ImageTransparency = .4,
            }),
            New("TextLabel", {
                AutomaticSize = "XY",
                Text = "This tab is empty",
                TextColor3 = Color3.fromHex(TabModule.Window.Theme.Text),
                ThemeTag = {
                    TextColor3 = "Text"
                },
                TextSize = 18,
                TextTransparency = .4,
                BackgroundTransparency = 1,
                FontFace = Font.new(Creator.Font, Enum.FontWeight.Medium),
            })
        })
        Tab.UIElements.ContainerFrame.ChildAdded:Connect(function()
            Empty.Visible = false
        end)
	end)
	
	return Tab
end

function TabModule:SelectTab(Tab)
    local TabIndex = Tab.Index
    
    TabModule.SelectedTab = TabIndex
    
    for _, TabObject in next, TabModule.Tabs do
        Tween(TabObject.UIElements.Main.TextLabel, 0.15, {TextTransparency = 0.4}):Play()
        if TabObject.Icon and Creator.Icon(TabObject.Icon) then
            Tween(TabObject.UIElements.Main.ImageLabel, 0.15, {ImageTransparency = 0.4}):Play()
        end
		TabObject.Selected = false
	end
    Tween(TabModule.Tabs[TabIndex].UIElements.Main.TextLabel, 0.15, {TextTransparency = 0}):Play()
    if Tab.Icon and Creator.Icon(Tab.Icon) then
        Tween(TabModule.Tabs[TabIndex].UIElements.Main.ImageLabel, 0.15, {ImageTransparency = 0}):Play()
    end
	TabModule.Tabs[TabIndex].Selected = true
	
	task.spawn(function()
	    for _, ContainerObject in next, TabModule.Containers do
	        ContainerObject.AnchorPoint = Vector2.new(0,0.05)
	        ContainerObject.Visible = false
	    end
	    TabModule.Containers[TabIndex].Visible = true
	    Tween(TabModule.Containers[TabIndex], 0.15, {AnchorPoint = Vector2.new(0,0)}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play()
	end)
end

return TabModule