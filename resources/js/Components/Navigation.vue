<template>
    <nav class="fixed top-0 w-full bg-white/80 dark:bg-brand-dark/80 backdrop-blur-md border-b border-gray-200 dark:border-brand-border z-50 transition-colors duration-300">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-16">
                <!-- Logo/Brand -->
                <div class="flex items-center space-x-2">
                    <div
                        class="w-10 h-10 bg-brand-accent rounded-lg flex items-center justify-center">
                        <span class="text-white font-bold text-lg">T</span>
                    </div>
                    <span
                        class="hidden sm:inline text-lg font-bold text-gray-900 dark:text-brand-text-primary">
                        Truong Thanh Nam
                    </span>
                </div>

                <!-- Navigation Links -->
                <div class="hidden md:flex items-center space-x-8">
                    <a href="#about" @click.prevent="scrollToSection('#about')"
                        class="text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight transition-colors text-sm font-medium">
                        {{ t('nav_about') }}
                    </a>
                    <a href="#skills" @click.prevent="scrollToSection('#skills')"
                        class="text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight transition-colors text-sm font-medium">
                        {{ t('nav_skills') }}
                    </a>
                    <a href="#projects" @click.prevent="scrollToSection('#projects')"
                        class="text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight transition-colors text-sm font-medium">
                        {{ t('nav_projects') }}
                    </a>
                    <a href="#contact" @click.prevent="scrollToSection('#contact')"
                        class="text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight transition-colors text-sm font-medium">
                        {{ t('nav_contact') }}
                    </a>
                </div>

                <!-- Mobile Menu Button & Controls -->
                <div class="flex items-center space-x-4">
                    <!-- Language Dropdown -->
                    <div class="relative group">
                        <button
                            class="px-3 py-1.5 text-sm font-semibold rounded-lg bg-brand-accent text-white hover:bg-brand-accent/90 transition-all flex items-center gap-1">
                            <span>{{ currentLanguageLabel }}</span>
                            <svg class="w-4 h-4 transform group-hover:rotate-180 transition-transform" fill="none"
                                stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M19 14l-7 7m0 0l-7-7m7 7V3" />
                            </svg>
                        </button>
                        <!-- Dropdown Menu -->
                        <div
                            class="absolute right-0 mt-0 w-32 bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-lg shadow-lg opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all">
                            <Link :href="route('language.switch', 'en')"
                                preserve-scroll
                                class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-dark/50 first:rounded-t-lg transition-colors text-sm font-medium"
                                :class="{ 'bg-brand-accent/10 text-brand-accent dark:text-brand-highlight': locale() === 'en' }">
                                🇬🇧 English
                            </Link>
                            <Link :href="route('language.switch', 'vi')"
                                preserve-scroll
                                class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-dark/50 last:rounded-b-lg transition-colors text-sm font-medium"
                                :class="{ 'bg-brand-accent/10 text-brand-accent dark:text-brand-highlight': locale() === 'vi' }">
                                🇻🇳 Tiếng Việt
                            </Link>
                        </div>
                    </div>

                    <!-- Theme Toggle -->
                    <button @click="toggleDark" class="p-2 rounded-lg bg-gray-100 dark:bg-brand-surface hover:bg-gray-200 dark:hover:bg-brand-border transition-colors">
                        <svg v-if="isDark" class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd"
                                d="M10 2a1 1 0 011 1v1a1 1 0 11-2 0V3a1 1 0 011-1zm4 8a4 4 0 11-8 0 4 4 0 018 0zm-.464 4.536l.707.707a1 1 0 001.414-1.414l-.707-.707a1 1 0 00-1.414 1.414zm2.121-10.607a1 1 0 010 1.414l-.707.707a1 1 0 11-1.414-1.414l.707-.707a1 1 0 011.414 0zM17 11a1 1 0 100-2h-1a1 1 0 100 2h1zm-7 4a1 1 0 011 1v1a1 1 0 11-2 0v-1a1 1 0 011-1zM5.05 6.464A1 1 0 106.464 5.05l-.707-.707a1 1 0 00-1.414 1.414l.707.707zm5.657-9.193a1 1 0 00-1.414 0l-.707.707A1 1 0 005.05 6.464l.707-.707a1 1 0 001.414-1.414zM5 11a1 1 0 100-2H4a1 1 0 100 2h1z"
                                clip-rule="evenodd" />
                        </svg>
                        <svg v-else class="w-5 h-5 text-gray-600" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M17.293 13.293A8 8 0 016.707 2.707a8.001 8.001 0 1010.586 10.586z" />
                        </svg>
                    </button>

                    <!-- Mobile Menu Button -->
                    <button @click="isOpen = !isOpen" class="md:hidden p-2 text-gray-600 dark:text-brand-text-secondary">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M4 6h16M4 12h16M4 18h16" />
                        </svg>
                    </button>
                </div>
            </div>

            <!-- Mobile Menu -->
            <div v-if="isOpen" class="md:hidden pb-4 space-y-2">
                <a href="#about" @click.prevent="scrollToSection('#about')"
                    class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-surface rounded-lg transition-colors">
                    {{ t('nav_about') }}
                </a>
                <a href="#skills" @click.prevent="scrollToSection('#skills')"
                    class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-surface rounded-lg transition-colors">
                    {{ t('nav_skills') }}
                </a>
                <a href="#projects" @click.prevent="scrollToSection('#projects')"
                    class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-surface rounded-lg transition-colors">
                    {{ t('nav_projects') }}
                </a>
                <a href="#contact" @click.prevent="scrollToSection('#contact')"
                    class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-surface rounded-lg transition-colors">
                    {{ t('nav_contact') }}
                </a>
                <!-- Mobile Language Selector -->
                <div class="border-t border-gray-200 dark:border-brand-border pt-2 mt-2 space-y-1">
                    <Link :href="route('language.switch', 'en')"
                        preserve-scroll
                        class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-surface rounded-lg transition-colors text-sm"
                        :class="{ 'bg-brand-accent/10 text-brand-accent dark:text-brand-highlight': locale() === 'en' }">
                        🇬🇧 English
                    </Link>
                    <Link :href="route('language.switch', 'vi')"
                        preserve-scroll
                        class="block px-4 py-2 text-gray-600 dark:text-brand-text-secondary hover:text-brand-accent dark:hover:text-brand-highlight hover:bg-gray-100 dark:hover:bg-brand-surface rounded-lg transition-colors text-sm"
                        :class="{ 'bg-brand-accent/10 text-brand-accent dark:text-brand-highlight': locale() === 'vi' }">
                        🇻🇳 Tiếng Việt
                    </Link>
                </div>
            </div>
        </div>
    </nav>
</template>

<script setup>
import { ref, computed } from 'vue'
import { Link } from '@inertiajs/vue3'
import { useTranslation } from '@/Composables/useTranslation'
import { useDarkMode } from '@/Composables/useDarkMode'
import { route } from 'ziggy-js'

const { t, locale } = useTranslation()
const { isDark, toggleDark } = useDarkMode()
const isOpen = ref(false)

const currentLanguageLabel = computed(() => {
    return locale() === 'en' ? 'EN' : 'VI'
})

const scrollToSection = (selector) => {
    isOpen.value = false
    const element = document.querySelector(selector)
    if (element) {
        element.scrollIntoView({ behavior: 'smooth' })
    }
}
</script>
