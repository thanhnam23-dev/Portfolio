import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue';

export default defineConfig({
    base: '/',
    plugins: [
        laravel({
            input: 'resources/js/app.js',
            refresh: true,
        }),
        vue({
            template: {
                transformAssetUrls: {
                    base: null,
                    includeAbsolute: false,
                },
            },
        }),
    ],
    build: {
        rollupOptions: {
            output: {
                // Performance: Splitting vendor libraries into a separate chunk
                manualChunks(id) {
                    if (id.includes('node_modules')) {
                        return 'vendor';
                    }
                },
            },
        },
        // Optimization: Reduce chunk size warnings limit
        chunkSizeWarningLimit: 1000,
        // Optimization: Minification and CSS splitting
        minify: 'terser',
        cssCodeSplit: true,
    },
});
