const tailwindColors = require('tailwindcss/colors')
const plugin = require('tailwindcss/plugin');

const execSync = require('child_process').execSync;
const gemRootPath = execSync('bundle show irelia-tailwind', { encoding: 'utf-8' }).trim();

module.exports = {
  contentPath: gemRootPath + '/**/*.{erb,haml,html,slim}',
  preset: ({ colors, baseFontSize }) => {
    return {
      theme: {
        extend: {
          colors: {
            primary: tailwindColors[colors['primary']],
            secondary: tailwindColors[colors['secondary']],
            neutral: tailwindColors[colors['neutral']],
          },
          fontFamily: {
            sans: ['Poppins'],
          },
        },
      },
      plugins: [
        require('@tailwindcss/forms'),
        require('@tailwindcss/aspect-ratio'),
        require('@tailwindcss/typography'),
        require('@tailwindcss/container-queries'),
        plugin(function ({ addBase }) {
          addBase({
            'html': { fontSize: baseFontSize },
          })
        }),
      ],
      safelist: [
        "hidden"
      ]
    }
  }
}