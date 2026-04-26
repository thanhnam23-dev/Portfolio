<template>
    <section class="min-h-screen flex items-center justify-center px-4 sm:px-6 lg:px-8 pt-20">
        <div class="max-w-4xl mx-auto text-center">
            <!-- Subtle Brand Accents -->
            <div class="absolute inset-0 -z-10 overflow-hidden">
                <div class="absolute top-20 left-10 w-72 h-72 bg-brand-accent/5 rounded-full blur-3xl"></div>
                <div class="absolute bottom-20 right-10 w-72 h-72 bg-brand-highlight/5 rounded-full blur-3xl"></div>
            </div>

            <!-- Main Content -->
            <div class="space-y-6">
                <!-- Greeting -->
                <div class="inline-block">
                    <span
                        class="px-4 py-2 bg-brand-accent/10 border border-brand-accent/20 rounded-full text-brand-accent dark:text-brand-highlight text-sm font-medium">
                        👋 {{ t('hero_welcome') }}
                    </span>
                </div>

                <!-- Main Title (Solid Color) -->
                <h1
                    class="text-4xl sm:text-6xl lg:text-7xl font-bold text-gray-900 dark:text-brand-text-primary animate-fade-in">
                    {{ t('hero_title') }}
                </h1>

                <!-- Subtitle -->
                <p class="text-xl sm:text-2xl text-gray-700 dark:text-brand-text-secondary font-light transition-colors">
                    {{ t('hero_role') }}
                    <span class="block text-gray-500 dark:text-brand-text-secondary/70 text-lg mt-2">{{ t('hero_subtitle') }}</span>
                </p>

                <!-- Description -->
                <p class="text-gray-600 dark:text-brand-text-secondary text-lg max-w-2xl mx-auto leading-relaxed transition-colors">
                    {{ t('hero_description') }}
                </p>

                <!-- CTA Buttons -->
                <div class="flex flex-col sm:flex-row items-center justify-center gap-4 pt-8">
                    <a href="#projects"
                        onclick="event.preventDefault(); document.querySelector('#projects').scrollIntoView({behavior: 'smooth'})"
                        class="px-8 py-3 bg-brand-accent text-white font-semibold rounded-lg hover:bg-brand-accent/90 transition-all transform hover:scale-105">
                        {{ t('hero_btn_projects') }}
                    </a>
                    <a href="mailto:namkim102@gmail.com"
                        class="px-8 py-3 border border-brand-accent/50 text-brand-accent dark:text-brand-highlight font-semibold rounded-lg hover:bg-brand-accent/5 transition-all">
                        {{ t('hero_btn_contact') }}
                    </a>
                </div>

                <!-- Quick Info -->
                <div class="flex flex-wrap justify-center gap-6 text-gray-500 dark:text-brand-text-secondary/60 text-sm pt-12">
                    <div class="flex items-center gap-2">
                        <span class="text-brand-accent">📍</span>
                        <span>{{ t('hero_location') }}</span>
                    </div>
                    <div class="flex items-center gap-2">
                        <span class="text-brand-accent">📧</span>
                        <a href="mailto:namkim102@gmail.com"
                            class="hover:text-brand-accent dark:hover:text-brand-highlight transition-colors">namkim102@gmail.com</a>
                    </div>
                    <div class="flex items-center gap-2">
                        <span class="text-brand-accent">📱</span>
                        <a href="tel:0969446782" class="hover:text-brand-accent dark:hover:text-brand-highlight transition-colors">0969446782</a>
                    </div>
                </div>
            </div>

            <!-- Scroll Indicator -->
            <div class="absolute bottom-10 left-1/2 transform -translate-x-1/2 animate-bounce">
                <svg class="w-6 h-6 text-brand-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M19 14l-7 7m0 0l-7-7m7 7V3" />
                </svg>
            </div>
        </div>
    </section>
</template>

<style scoped>
@keyframes fade-in {
    from {
        opacity: 0;
        transform: translateY(20px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.animate-fade-in {
    animation: fade-in 0.6s ease-out;
}
</style>

<script setup>
import { useTranslation } from '@/Composables/useTranslation'

const { t } = useTranslation()
</script>
