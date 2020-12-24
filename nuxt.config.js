export default {
  build: {
    extend(config, { isDev, isClient }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: 'pre',
          test: /\.(js|vue)$/,
          loader: 'eslint-loader',
          exclude: /(node_modules)/,
        })
      }
    },
  },

  buildModules: [],

  css: ['assets/scss/main.scss'],

  head: {
    title: 'IIMB',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    ],
    link: [
      { rel: 'icon', type: 'image/jpg', href: '/img/icon.jpg' },
      {
        rel: 'stylesheet',
        type: 'text/css',
        href: 'https://use.fontawesome.com/releases/v5.9.0/css/all.css',
      },
    ],
  },

  loading: { color: '#2196F3' },

  modules: ['@nuxtjs/style-resources'],

  plugins: [
    'node_modules/drongo-boot/components/vue/plugin.js',
    'node_modules/drongo-boot/test-site/plugins/scrollto.js',
  ],

  styleResources: {
    scss: ['assets/scss/_mixins.scss'],
  },

  // target: 'static',
  router: {
    base: '/iimb-demo/',
  },
}
