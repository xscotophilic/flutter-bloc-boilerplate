export default {
    lang: 'en-US',
    title: 'Flutter Bloc Boilerplate',
    description: 'yo! you good?',
    cleanUrls: 'with-subfolders',
    lastUpdated: true,
    markdown: {
        theme: 'material-palenight',
        lineNumbers: true
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
                    { text: 'Getting Started', link: '/project/getting-started' },
                ]
            }
        ],
        footer: {
            message: 'Made with ❤️',
            copyright: 'Released under the MIT License.'
        }
    }
}
