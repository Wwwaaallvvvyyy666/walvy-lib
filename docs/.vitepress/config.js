export default {
    title: 'WindUI',
    description: 'Documentation',
    base: '/WindUI/',
    
    themeConfig: {
        logo: '../W.png',
        
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
                        text: '📦 Installation',
                        link: '/documentation/installation',
                        activeMatch: '/documentation/installation',
                    },
                    {
                        text: '🚀 Getting Started',
                        link: '/documentation/getting-started',
                        activeMatch: '/documentation/getting-started',
                    },
                    {
                        text: '🎨 Themes',
                        link: '/documentation/themes',
                        activeMatch: '/documentation/themes',
                    },
                    {
                        text: '📚 Components',
                        items: [
                            {
                                text: 'Tab',
                                link: '/documentation/components/tab',
                                activeMatch: '/documentation/components/tab',
                            },
                            {
                                text: 'Section',
                                link: '/documentation/components/section',
                                activeMatch: '/documentation/components/section',
                            },
                            ]
                    }
                ],
            },
            ]
    },
    
    markdown: {
        lineNumbers: false, 
    },
    
    css: {
        code: {
            dark: true,
            light: true,
        }
    }
};