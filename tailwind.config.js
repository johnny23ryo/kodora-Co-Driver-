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
        'customGreen': '#B1B479',
        'customGreen1': '#89916B',
        'customWhite': 'rgb(233,226,241)',
        'customRed': '#D0104C',
      },
      inset: {
        '1/4': '25%',
      },
      screens: {
        'xxl': '1280px', // 1600pxをカスタムブレークポイントとして追加
        'xs': {'max': '420px'}, // 420px以下のカスタムブレークポイントを追加
      },
    },
  },
}
