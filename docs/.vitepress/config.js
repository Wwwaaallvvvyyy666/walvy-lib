export default {
    title: 'WindUI',
    description: 'Documentation',
    base: '/WindUI/',
    
    themeConfig: {
        logo: 'https://raw.githubusercontent.com/Footagesus/WindUI/refs/heads/main/docs/W.png',
        
        nav: [
            { text: 'Home', link: '/' },
            { text: 'Documentation', link: '/documentation/installation', activeMatch: '/documentation/' },
            { text: 'Discord', link: 'https://discord.gg/VGws6ms6' },
        ],
            
        socialLinks: [
            { icon: 'github', link: 'https://github.com/Footagesus/WindUI' }
        ],
            
        actions: [
            {
                theme: 'brand',
                text: 'Documentation',
                link: '/documentation/'
            },
            {
                theme: 'alt',
                text: 'Discord',
                link: 'https://discord.gg/VGws6ms6'
            }
        ],
            
        footer: {
            message: 'Made with ❤️ by Footages',
            copyright: 'Copyright © 2024 Footages'
        },
        sidebar: [
            {
                text: 'Documentation',
                collapsed: true,
                items: [
                    {
                        text: 'Installation',
                        link: '/documentation/installation',
                        activeMatch: '/documentation/installation',
                    },
                    {
                        text: 'Getting Started',
                        link: '/documentation/getting-started',
                        activeMatch: '/documentation/getting-started',
                    },
                    {
                        text: 'Themes',
                        link: '/documentation/themes',
                        activeMatch: '/documentation/themes',
                    },
                    {
                        text: 'Tab',
                        link: '/documentation/tab',
                        activeMatch: '/documentation/tab',
                    },
                    {
                        text: 'Divider',
                        link: '/documentation/divider',
                        activeMatch: '/documentation/divider',
                    },
                ],
            },
            {
                text: 'Components',
                collapsed: true,
                items: [
                    {
                        text: 'Section',
                        link: '/documentation/components/section',
                        activeMatch: '/documentation/components/section',
                    },
                    {
                        text: 'Paragraph',
                        link: '/documentation/components/paragraph',
                        activeMatch: '/documentation/components/paragraph',
                    },
                    {
                        text: 'Button',
                        link: '/documentation/components/button',
                        activeMatch: '/documentation/components/button',
                    },
                    {
                        text: 'Toggle',
                        link: '/documentation/components/toggle',
                        activeMatch: '/documentation/components/toggle',
                    },
                    {
                        text: 'Slider',
                        link: '/documentation/components/slider',
                        activeMatch: '/documentation/components/slider',
                    },
                    {
                        text: 'Keybind',
                        link: '/documentation/components/keybind',
                        activeMatch: '/documentation/components/keybind',
                    },
                    {
                        text: 'Input',
                        link: '/documentation/components/input',
                        activeMatch: '/documentation/components/input',
                    },
                    {
                        text: 'Dropdown',
                        link: '/documentation/components/dropdown',
                        activeMatch: '/documentation/components/dropdown',
                    },
                    {
                        text: 'Colorpicker',
                        link: '/documentation/components/colorpicker',
                        activeMatch: '/documentation/components/colorpicker',
                    },
                ]
            }
        ]
    },
    
    markdown: {
        lineNumbers: true, 
    },
    
    css: {
        code: {
            dark: true,
            light: true,
        }
    }
};