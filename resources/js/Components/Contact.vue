<template>
  <section id="contact" class="py-20 px-4 sm:px-6 lg:px-8 transition-colors duration-300">
    <div class="max-w-4xl mx-auto">
      <!-- Section Title -->
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl font-bold text-gray-900 dark:text-brand-text-primary mb-4">
          {{ t('contact_title') }}
        </h2>
        <p class="text-gray-600 dark:text-brand-text-secondary text-lg transition-colors">{{ t('contact_subtitle') }}
        </p>
      </div>

      <!-- Contact Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-12">
        <!-- Email Contact -->
        <a href="mailto:namkim102@gmail.com"
          class="bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-xl p-8 hover:border-brand-accent dark:hover:border-brand-highlight/60 transition-all group shadow-sm dark:shadow-none">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl transition-transform group-hover:scale-110 duration-300">📧</div>
            <svg
              class="w-5 h-5 text-brand-accent dark:text-brand-highlight group-hover:translate-x-1 transition-transform"
              fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-brand-text-primary mb-2 transition-colors">{{
            t('contact_email') }}</h3>
          <p class="text-gray-600 dark:text-brand-text-secondary transition-colors">namkim102@gmail.com</p>
          <p class="text-sm text-gray-500 dark:text-brand-text-secondary/60 mt-2 transition-colors">{{
            t('contact_email_desc') }}</p>
        </a>

        <!-- Phone Contact -->
        <a href="tel:0969446782"
          class="bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-xl p-8 hover:border-brand-highlight dark:hover:border-brand-highlight/60 transition-all group shadow-sm dark:shadow-none">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl transition-transform group-hover:scale-110 duration-300">📱</div>
            <svg class="w-5 h-5 text-brand-highlight group-hover:translate-x-1 transition-transform" fill="none"
              stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-brand-text-primary mb-2 transition-colors">{{
            t('contact_phone') }}</h3>
          <p class="text-gray-600 dark:text-brand-text-secondary transition-colors">0969446782</p>
          <p class="text-sm text-gray-500 dark:text-brand-text-secondary/60 mt-2 transition-colors">{{
            t('contact_phone_desc') }}</p>
        </a>

        <!-- Location -->
        <a href="https://maps.google.com/maps/search/34+Dong+Ngac,+Hanoi" target="_blank" rel="noopener noreferrer"
          class="bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-xl p-8 hover:border-brand-accent dark:hover:border-brand-highlight/60 transition-all group shadow-sm dark:shadow-none">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl transition-transform group-hover:scale-110 duration-300">📍</div>
            <svg
              class="w-5 h-5 text-brand-accent dark:text-brand-highlight group-hover:translate-x-1 transition-transform"
              fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-brand-text-primary mb-2 transition-colors">{{
            t('contact_location') }}</h3>
          <p class="text-gray-600 dark:text-brand-text-secondary transition-colors">34 Dong Ngac, Hanoi</p>
          <p class="text-sm text-gray-500 dark:text-brand-text-secondary/60 mt-2 transition-colors">{{
            t('contact_location_desc') }}</p>
        </a>

        <!-- GitHub -->
        <a href="https://github.com/thanhnam23-dev" target="_blank" rel="noopener noreferrer"
          class="bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-xl p-8 hover:border-gray-500 dark:hover:border-gray-400/60 transition-all group shadow-sm dark:shadow-none">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl transition-transform group-hover:scale-110 duration-300">💻</div>
            <svg
              class="w-5 h-5 text-gray-600 dark:text-brand-text-secondary group-hover:translate-x-1 transition-transform"
              fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-brand-text-primary mb-2 transition-colors">{{
            t('contact_github') }}</h3>
          <p class="text-gray-600 dark:text-brand-text-secondary transition-colors">@thanhnam23-dev</p>
          <p class="text-sm text-gray-500 dark:text-brand-text-secondary/60 mt-2 transition-colors">{{
            t('contact_github_desc') }}</p>
        </a>
      </div>

      <!-- Quick Message Section -->
      <div
        class="bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-xl p-8 shadow-sm dark:shadow-none transition-colors">
        <h3 class="text-2xl font-bold text-gray-900 dark:text-brand-text-primary mb-6 transition-colors">{{
          t('contact_form_title') }}</h3>
        <form @submit.prevent="submitForm" class="space-y-4">
          <div>
            <input v-model="form.name" type="text" :placeholder="t('contact_form_name')"
              class="w-full px-4 py-3 bg-gray-50 dark:bg-brand-dark border border-gray-200 dark:border-brand-border rounded-lg text-gray-900 dark:text-brand-text-primary placeholder-gray-500 focus:border-brand-accent focus:outline-none transition-colors" />
          </div>
          <div>
            <input v-model="form.email" type="email" :placeholder="t('contact_form_email')"
              class="w-full px-4 py-3 bg-gray-50 dark:bg-brand-dark border border-gray-200 dark:border-brand-border rounded-lg text-gray-900 dark:text-brand-text-primary placeholder-gray-500 focus:border-brand-accent focus:outline-none transition-colors" />
          </div>
          <div>
            <textarea v-model="form.message" :placeholder="t('contact_form_message')" rows="5"
              class="w-full px-4 py-3 bg-gray-50 dark:bg-brand-dark border border-gray-200 dark:border-brand-border rounded-lg text-gray-900 dark:text-brand-text-primary placeholder-gray-500 focus:border-brand-accent focus:outline-none transition-colors resize-none"></textarea>
          </div>
          <p v-if="formMessage"
            :class="formMessage.type === 'success' ? 'text-green-600 dark:text-green-400' : 'text-red-600 dark:text-red-400'"
            class="text-sm">
            {{ formMessage.text }}
          </p>
          <button type="submit" :disabled="isSubmitting"
            class="w-full px-6 py-3 bg-brand-accent text-white font-semibold rounded-lg hover:bg-brand-accent/90 transition-all disabled:opacity-50 disabled:cursor-not-allowed transform active:scale-[0.98]">
            {{ isSubmitting ? t('contact_form_sending') : t('contact_form_send') }}
          </button>
        </form>
      </div>

      <!-- Social Links -->
      <div class="mt-12 text-center">
        <p class="text-gray-600 dark:text-brand-text-secondary mb-6 transition-colors">{{ t('contact_social') }}</p>
        <div class="flex justify-center gap-4">
          <a href="https://github.com/thanhnam23-dev" target="_blank" rel="noopener noreferrer"
            class="w-12 h-12 bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-full flex items-center justify-center text-gray-600 dark:text-brand-text-secondary hover:bg-gray-50 dark:hover:bg-brand-dark hover:border-gray-300 dark:hover:border-brand-accent transition-all shadow-sm dark:shadow-none">
            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
              <path
                d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v 3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
            </svg>
          </a>
          <a href="mailto:namkim102@gmail.com"
            class="w-12 h-12 bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-full flex items-center justify-center text-gray-600 dark:text-brand-text-secondary hover:bg-gray-50 dark:hover:bg-brand-dark hover:border-gray-300 dark:hover:border-brand-accent transition-all shadow-sm dark:shadow-none">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
          </a>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'
import { useTranslation } from '@/Composables/useTranslation'

const { t } = useTranslation()

const form = ref({
  name: '',
  email: '',
  message: ''
})

const isSubmitting = ref(false)
const formMessage = ref(null)

const submitForm = async () => {
  if (!form.value.name || !form.value.email || !form.value.message) {
    formMessage.value = { type: 'error', text: t('contact_form_required') }
    return
  }

  isSubmitting.value = true
  try {
    // In a real application, you would send this to your backend
    // For now, we'll just show a success message
    formMessage.value = { type: 'success', text: t('contact_form_success') }
    form.value = { name: '', email: '', message: '' }

    setTimeout(() => {
      formMessage.value = null
    }, 5000)
  } catch (error) {
    formMessage.value = { type: 'error', text: t('contact_form_error') }
  } finally {
    isSubmitting.value = false
  }
}
</script>
