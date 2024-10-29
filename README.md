### WindUI 

## Using UI Library

-# Full example you can find in Example.lua

1. Connect UI Library
```lua
local Version = "1.0.0"
local WindUI = loadstring(game:HttpGetAsync("https://github.com/Footagesus/WindUI/releases/download/" .. Version .. "/main.lua"))()
```

2. Creating Window
```lua
local Window = WindUI:CreateWindow({
    Title = "WindUI Library",         -- UI Title                     
    Icon = "image",                   -- Url or rbxassetid or lucide  
    Author = ".ftgs",                 -- Author & Creator             
    Size = UDim2.fromOffset(580,460), -- UI Size                      
    Transparent = true,               -- UI Transparency              
    Theme = "Dark",                   -- UI Theme (Dark, Light, Lime) 
    SideBarWidth = 170,               -- UI Sidebar Width             
})
```

| Key          | Type    | Default                           |
|--------------|---------|-----------------------------------|
| Title        | string  | "UI Library"                      |
| Icon         | string  | nil                               |
| Author       | string  | nil                               |
| Size         | UDim2   | UDim2.fromOffset(560,460)         |
| Transparent  | boolean | false                             |
| Theme        | string  | "Dark"                            |
| SideBarWidth | number  | 200                               |


3. Creating Tab
```lua
local MainTab = Window:Tab({
    Title = "Main",  -- Tab Title                    
    Icon = "folder", -- Lucide Icons (src/Icons.lua)
})
```

| Key   | Type   | Default |
|-------|--------|---------|
| Title | string | "Tab"   |
| Icon  | string | nil     |


### Elements

- Creating Section
```lua
MainTab:Section({ 
    Title = "Title" -- Section Title
})
```

| Key   | Type   | Default   |
|-------|--------|-----------|
| Title | string | "Section" |


- Creating Button
```lua
local Button = MainTab:Button({
    Title = "Button Main",        -- Button Title       
    Desc = "Button Desc",         -- Button Description 
    Callback = function()         -- Button Callback    
        print("Callback Example")
    end,
})
```

| Key      | Type     | Default                |
|----------|----------|------------------------|
| Title    | string   | "Button"               |
| Desc     | string   | nil                    |
| Callback | function | function() end         |


- Creating Paragraph
```lua
local Paragraph = MainTab:Paragraph({
    Title = "Paragraph",                         -- Paragraph Title       
    Desc = "Paragraph Content\nAnd second line", -- Paragraph Description 
})
```

| Key   | Type   | Default     |
|-------|--------|-------------|
| Title | string | "Paragraph" |
| Desc  | string | nil         |