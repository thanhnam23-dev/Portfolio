<template>
    <section id="skills" class="py-20 px-4 sm:px-6 lg:px-8 transition-colors duration-300">
        <div class="max-w-6xl mx-auto">
            <!-- Section Title -->
            <div class="text-center mb-16">
                <h2
                    class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent mb-4">
                    {{ t('skills_title') }}
                </h2>
                <p class="text-gray-600 dark:text-gray-400 text-lg transition-colors">{{ t('skills_subtitle') }}</p>
            </div>

            <!-- Skills Grid -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- Backend Skills -->
                <div
                    class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all shadow-sm dark:shadow-none">
                    <h3 class="text-2xl font-bold text-blue-600 dark:text-blue-400 mb-6 flex items-center gap-2">
                        {{ t('skills_backend') }}
                    </h3>
                    <div class="space-y-4">
                        <SkillBar :skill="t('skills_php')" percentage="95" />
                        <SkillBar :skill="t('skills_api')" percentage="90" />
                        <SkillBar :skill="t('skills_mvc')" percentage="85" />
                        <SkillBar :skill="t('skills_soa')" percentage="80" />
                        <SkillBar :skill="t('skills_mysql')" percentage="88" />
                    </div>
                </div>

                <!-- Frontend Skills -->
                <div
                    class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 hover:border-cyan-500/50 transition-all shadow-sm dark:shadow-none">
                    <h3 class="text-2xl font-bold text-cyan-600 dark:text-cyan-400 mb-6 flex items-center gap-2">
                        {{ t('skills_frontend') }}
                    </h3>
                    <div class="space-y-4">
                        <SkillBar :skill="t('skills_vuejs')" percentage="90" />
                        <SkillBar :skill="t('skills_tailwind')" percentage="92" />
                        <SkillBar :skill="t('skills_javascript')" percentage="88" />
                        <SkillBar :skill="t('skills_html')" percentage="92" />
                        <SkillBar :skill="t('skills_inertia')" percentage="85" />
                    </div>
                </div>

                <!-- Database & Tools -->
                <div
                    class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 hover:border-purple-500/50 transition-all shadow-sm dark:shadow-none">
                    <h3 class="text-2xl font-bold text-purple-600 dark:text-purple-400 mb-6 flex items-center gap-2">
                        {{ t('skills_database') }}
                    </h3>
                    <div class="space-y-4">
                        <SkillBar skill="MySQL" percentage="90" />
                        <SkillBar :skill="t('skills_git')" percentage="88" />
                        <SkillBar :skill="t('skills_cli')" percentage="85" />
                        <SkillBar :skill="t('skills_api')" percentage="90" />
                    </div>
                </div>

                <!-- Programming Languages -->
                <div
                    class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 hover:border-green-500/50 transition-all shadow-sm dark:shadow-none">
                    <h3 class="text-2xl font-bold text-green-600 dark:text-green-400 mb-6 flex items-center gap-2">
                        {{ t('skills_languages') }}
                    </h3>
                    <div class="space-y-4">
                        <SkillBar skill="PHP" percentage="95" />
                        <SkillBar skill="Python" percentage="80" />
                        <SkillBar :skill="t('skills_javascript')" percentage="88" />
                        <SkillBar :skill="t('skills_c')" percentage="75" />
                        <SkillBar :skill="t('skills_java')" percentage="70" />
                    </div>
                </div>
            </div>

            <!-- Additional Skills -->
            <div class="mt-12 grid grid-cols-1 md:grid-cols-2 gap-6">
                <!-- Architecture Patterns -->
                <div class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-6 shadow-sm dark:shadow-none">
                    <h4 class="text-lg font-semibold text-blue-600 dark:text-blue-400 mb-4 flex items-center gap-2">
                        {{ t('skills_architecture') }}
                    </h4>
                    <div class="flex flex-wrap gap-2">
                        <span v-for="arch in architectures" :key="arch"
                            class="px-3 py-1 bg-blue-100 dark:bg-blue-500/20 text-blue-600 dark:text-blue-300 rounded-full text-sm border border-blue-200 dark:border-blue-500/30 transition-colors">
                            {{ t(arch) }}
                        </span>
                    </div>
                </div>

                <!-- Payment Integration -->
                <div class="bg-white dark:bg-gradient-to-br dark:from-gray-700/50 dark:to-gray-800/50 border border-gray-200 dark:border-gray-600/50 rounded-xl p-6 shadow-sm dark:shadow-none">
                    <h4 class="text-lg font-semibold text-purple-600 dark:text-purple-400 mb-4 flex items-center gap-2">
                        {{ t('skills_payment') }}
                    </h4>
                    <div class="flex flex-wrap gap-2">
                        <span v-for="payment in payments" :key="payment"
                            class="px-3 py-1 bg-purple-100 dark:bg-purple-500/20 text-purple-600 dark:text-purple-300 rounded-full text-sm border border-purple-200 dark:border-purple-500/30 transition-colors">
                            {{ t(payment) }}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script setup>
import { ref } from 'vue'
import SkillBar from './SkillBar.vue'
import { useTranslation } from '@/Composables/useTranslation'

const { t } = useTranslation()

const architectures = ref(['skills_monolithic', 'skills_soa_arch', 'skills_rest'])
const payments = ref(['skills_vnpay', 'skills_momo', 'skills_cod', 'skills_otp'])
</script>
