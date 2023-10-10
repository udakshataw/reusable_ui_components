module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        primary: '#3D49B6',
        secondary: '#EEEEF4',
        lightblack: '#282A2D',
        lightblue: "#77A8F1",
        lightGray: "#888888",
        lightBlue: '#DCDFFF',
        blue: '#2563eb',
        error: '#D20123',
        warning: '#FF9800',
        success: '#06AC0C',
        modalbg: 'rgba(0, 0, 0, 0.5)',
      },
      screens: {
        sm: '770px',
        md: '960px',
        lg: '1220px',
      },
      fontFamily: {
        nunito: ['nunito sans'],
        ultra: ['ultra'],
        poppins: ['poppins'],
      },
      fontSize: {
        'sm': '12px',     // Small size
        'base': '14px',   // Base size
        'md': '16px',     // Medium size
        'lg': '20px',     // Large size
        'xl': '24px',     // Extra-large size
        '2xl': '30px',    // 2X large size
      },
      backgroundImage: {
        'backgroundImage': "url('https://teamplusimagestorage.blob.core.windows.net/teamplusimagestorage/tenant/bgImg.png')",
        'backImage': "url('https://teamplusimagestorage.blob.core.windows.net/teamplusimagestorage/landingPage/bgImg.png')"
      }
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/aspect-ratio'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
  ]
}
