<template>
    <section id="about" class="py-20 px-4 sm:px-6 lg:px-8 bg-gray-800/50">
        <div class="max-w-4xl mx-auto">
            <!-- Section Title -->
            <div class="text-center mb-16">
                <h2
                    class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent mb-4">
                    {{ t('about_title') }}
                </h2>
                <p class="text-gray-400 text-lg">{{ t('about_subtitle') }}</p>
            </div>

            <!-- Main Content -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-12">
                <!-- Career Objective -->
                <div class="md:col-span-2 space-y-6">
                    <div
                        class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all">
                        <h3 class="text-2xl font-bold text-blue-400 mb-4 flex items-center gap-2">
                            {{ t('about_objective_title') }}
                        </h3>
                        <p class="text-gray-300 leading-relaxed text-lg">
                            {{ t('about_objective') }}
                        </p>
                    </div>

                    <!-- Education -->
                    <div
                        class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all">
                        <h3 class="text-2xl font-bold text-blue-400 mb-6 flex items-center gap-2">
                            {{ t('about_education_title') }}
                        </h3>
                        <div class="space-y-4">
                            <div class="border-l-2 border-cyan-500 pl-4">
                                <h4 class="text-xl font-semibold text-white">{{ t('about_university') }}</h4>
                                <p class="text-gray-400 mt-1">{{ t('about_major') }}</p>
                                <p class="text-sm text-gray-500 mt-2">{{ t('about_period') }}</p>
                            </div>
                            <div class="mt-4 p-4 bg-gray-800/50 rounded-lg">
                                <div class="flex justify-between items-center">
                                    <span class="text-gray-300">{{ t('about_gpa') }}</span>
                                    <span
                                        class="text-xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent">8.3
                                        / 10</span>
                                </div>
                                <div class="text-sm text-gray-400 mt-1">(3.44 / 4.0)</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Quick Stats -->
                <div class="space-y-4">
                    <!-- Stat Card Template -->
                    <div v-for="stat in stats" :key="stat.label"
                        class="bg-gradient-to-br from-blue-600/20 to-cyan-600/20 border border-blue-500/30 rounded-xl p-6 text-center hover:border-blue-400/50 transition-all">
                        <div class="text-3xl mb-2">{{ stat.icon }}</div>
                        <div class="text-2xl font-bold text-blue-400">{{ stat.value }}</div>
                        <div class="text-sm text-gray-400 mt-2">{{ t(stat.labelKey) }}</div>
                    </div>
                </div>
            </div>

            <!-- Languages -->
            <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8">
                <h3 class="text-2xl font-bold text-blue-400 mb-6 flex items-center gap-2">
                    {{ t('about_languages_title') }}
                </h3>
                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    <div class="flex items-center justify-between p-4 bg-gray-800/50 rounded-lg">
                        <span class="text-gray-300 font-medium">{{ t('about_lang_english') }}</span>
                        <span class="text-cyan-400 font-semibold">{{ t('about_lang_reading') }}</span>
                    </div>
                    <div class="flex items-center justify-between p-4 bg-gray-800/50 rounded-lg">
                        <span class="text-gray-300 font-medium">{{ t('about_lang_japanese') }}</span>
                        <span class="text-cyan-400 font-semibold">{{ t('about_lang_jlpt') }}</span>
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
