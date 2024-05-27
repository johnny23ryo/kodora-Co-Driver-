module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        customGreen: '#4D5139',
        customYellow: '#B69900',
      },
      width: {
        '50vw': '50vw',
        '100vw': '100vw',
      },
    },
  },
}
