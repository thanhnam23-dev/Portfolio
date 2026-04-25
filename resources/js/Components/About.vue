<template>
    <section id="about" class="py-20 px-4 sm:px-6 lg:px-8 bg-gray-50 dark:bg-gray-800/50 transition-colors duration-300">
        <div class="max-w-4xl mx-auto">
            <!-- Section Title -->
            <div class="text-center mb-16">
                <h2
                    class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent mb-4">
                    {{ t('about_title') }}
                </h2>
                <p class="text-gray-600 dark:text-gray-400 text-lg transition-colors">{{ t('about_subtitle') }}</p>
            </div>

            <!-- Main Content -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-12">
                <!-- Career Objective -->
                <div class="md:col-span-2 space-y-6">
                    <div
                        class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all shadow-sm dark:shadow-none">
                        <h3 class="text-2xl font-bold text-blue-600 dark:text-blue-400 mb-4 flex items-center gap-2">
                            {{ t('about_objective_title') }}
                        </h3>
                        <p class="text-gray-600 dark:text-gray-300 leading-relaxed text-lg transition-colors">
                            {{ t('about_objective') }}
                        </p>
                    </div>

                    <!-- Education -->
                    <div
                        class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all shadow-sm dark:shadow-none">
                        <h3 class="text-2xl font-bold text-blue-600 dark:text-blue-400 mb-6 flex items-center gap-2">
                            {{ t('about_education_title') }}
                        </h3>
                        <div class="space-y-4">
                            <div class="border-l-2 border-cyan-500 dark:border-cyan-500 pl-4">
                                <h4 class="text-xl font-semibold text-gray-900 dark:text-white transition-colors">{{ t('about_university') }}</h4>
                                <p class="text-gray-600 dark:text-gray-400 mt-1 transition-colors">{{ t('about_major') }}</p>
                                <p class="text-sm text-gray-500 dark:text-gray-500 mt-2 transition-colors">{{ t('about_period') }}</p>
                            </div>
                            <div class="mt-4 p-4 bg-gray-50 dark:bg-gray-800/50 rounded-lg transition-colors">
                                <div class="flex justify-between items-center">
                                    <span class="text-gray-600 dark:text-gray-300 transition-colors">{{ t('about_gpa') }}</span>
                                    <span
                                        class="text-xl font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">8.3
                                        / 10</span>
                                </div>
                                <div class="text-sm text-gray-500 dark:text-gray-400 mt-1 transition-colors">(3.44 / 4.0)</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Quick Stats -->
                <div class="space-y-4">
                    <!-- Stat Card Template -->
                    <div v-for="stat in stats" :key="stat.label"
                        class="bg-white dark:bg-gradient-to-br dark:from-blue-600/20 dark:to-cyan-600/20 border border-gray-200 dark:border-blue-500/30 rounded-xl p-6 text-center hover:border-blue-400 transition-all shadow-sm dark:shadow-none">
                        <div class="text-3xl mb-2">{{ stat.icon }}</div>
                        <div class="text-2xl font-bold text-blue-600 dark:text-blue-400">{{ stat.value }}</div>
                        <div class="text-sm text-gray-500 dark:text-gray-400 mt-2 transition-colors">{{ t(stat.labelKey) }}</div>
                    </div>
                </div>
            </div>

            <!-- Languages -->
            <div class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 shadow-sm dark:shadow-none transition-colors">
                <h3 class="text-2xl font-bold text-blue-600 dark:text-blue-400 mb-6 flex items-center gap-2">
                    {{ t('about_languages_title') }}
                </h3>
                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    <div class="flex items-center justify-between p-4 bg-gray-50 dark:bg-gray-800/50 rounded-lg transition-colors">
                        <span class="text-gray-700 dark:text-gray-300 font-medium transition-colors">{{ t('about_lang_english') }}</span>
                        <span class="text-cyan-600 dark:text-cyan-400 font-semibold transition-colors">{{ t('about_lang_reading') }}</span>
                    </div>
                    <div class="flex items-center justify-between p-4 bg-gray-50 dark:bg-gray-800/50 rounded-lg transition-colors">
                        <span class="text-gray-700 dark:text-gray-300 font-medium transition-colors">{{ t('about_lang_japanese') }}</span>
                        <span class="text-cyan-600 dark:text-cyan-400 font-semibold transition-colors">{{ t('about_lang_jlpt') }}</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script setup>
import { ref } from 'vue'
import { useTranslation } from '@/Composables/useTranslation'

const { t } = useTranslation()

const stats = ref([
    { icon: '💼', value: '4+', labelKey: 'about_stats_projects' },
    { icon: '🎯', value: '6+', labelKey: 'about_stats_skills' },
    { icon: '🚀', value: '2+', labelKey: 'about_stats_experience' },
])
</script>
