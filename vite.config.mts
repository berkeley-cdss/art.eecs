import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'

export default defineConfig({
  plugins: [
    RubyPlugin(),
  ],
  css: {
    preprocessorOptions: {
      scss: {
        // Bootstrap 5.3 still uses the legacy Sass @import system.
        quietDeps: true,
        silenceDeprecations: ['import'],
      },
    },
  },
})
