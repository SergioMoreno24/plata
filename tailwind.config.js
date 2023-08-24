/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors:{
        blue: {
          exm: '#00A9BB',
          exm2: '#123D81',
          exm3: '#28255A',
        },
        purple: {
          exm: '#8D568E',
        },
        yellow: {
          exm: '#FFDA2A',
        },
        green: {
          exm: '#008A55',
        },
      },
      height: {
        '60vh': '60vh',
        '70vh': '70vh',
        '80vh': '80vh',
        '90vh': '90vh',
      }
    },
  },
  plugins: [],
}
