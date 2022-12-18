export default {
    lang: 'en-US',
    title: 'Flutter Bloc Boilerplate',
    description: 'yo! you good?',
    cleanUrls: 'with-subfolders',
    lastUpdated: true,
    markdown: {
        theme: 'material-palenight',
        lineNumbers: false
    },
    themeConfig: {
        siteTitle: 'Flutter Bloc Boilerplate', // in Nav
        nav: [
            { text: 'Config', link: '/config' },
            { text: 'Changelog', link: 'https://github.com/xscotophilic/flutter-bloc-boilerplate/CHANGELOG.md' },
            { text: 'About Author', link: 'https://xscotophilic.ml' }
        ],
        socialLinks: [
            { icon: 'github', link: 'https://github.com/xscotophilic/flutter-bloc-boilerplate/' },
            { icon: 'twitter', link: 'https://twitter.com/xscotophilic' },
        ],
        sidebar: [
            {
                text: 'About Project',
                collapsible: true,
                items: [
                    { text: 'Introduction', link: '/project/introduction' },
                    {
                        text: 'Getting Started',
                        items: [
                            { text: 'Overview', link: '/project/getting-started/overview' },
                            { text: 'Using Boilerplate In New Project', link: '/project/getting-started/boilerplate-as-new' },
                            { text: 'Extending Boilerplate', link: '/project/getting-started/boilerplate-as-base' },
                        ],
                    },
                ]
            },
            {
                text: 'Basic configs',
                collapsible: true,
                items: [
                    { text: 'Setup Flavors', link: '/project/basic-config/flavors' },
                    { text: 'Default Package Names', link: '/project/basic-config/packagenames' },

                ]
            },
            {
                text: 'Modules',
                collapsible: true,
                items: [
                    { text: 'Universal file management', link: '/project/modules/universalfile' },
                    { text: 'Log Modules', link: '/project/modules/logging' },
                    { text: 'Environments', link: '/project/modules/envs' },
                    { text: 'Theme', link: '/project/modules/theme' },
                    { text: 'Locale', link: '/project/modules/locale' },
                ]
            }
        ],
        footer: {
            message: 'Made with ❤️',
            copyright: 'Released under the MIT License.'
        }
    }
}
