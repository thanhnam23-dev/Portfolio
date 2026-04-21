<template>
  <section id="contact" class="py-20 px-4 sm:px-6 lg:px-8">
    <div class="max-w-4xl mx-auto">
      <!-- Section Title -->
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent mb-4">
          Get In Touch
        </h2>
        <p class="text-gray-400 text-lg">Let's connect and collaborate</p>
      </div>

      <!-- Contact Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-12">
        <!-- Email Contact -->
        <a href="mailto:namkim102@gmail.com" class="bg-gradient-to-br from-blue-600/20 to-blue-600/10 border border-blue-500/30 rounded-xl p-8 hover:border-blue-400/60 transition-all group">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl">📧</div>
            <svg class="w-5 h-5 text-blue-400 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-white mb-2">Email</h3>
          <p class="text-gray-300">namkim102@gmail.com</p>
          <p class="text-sm text-gray-400 mt-2">I'll respond within 24 hours</p>
        </a>

        <!-- Phone Contact -->
        <a href="tel:0969446782" class="bg-gradient-to-br from-cyan-600/20 to-cyan-600/10 border border-cyan-500/30 rounded-xl p-8 hover:border-cyan-400/60 transition-all group">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl">📱</div>
            <svg class="w-5 h-5 text-cyan-400 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-white mb-2">Phone</h3>
          <p class="text-gray-300">0969446782</p>
          <p class="text-sm text-gray-400 mt-2">Available for quick calls</p>
        </a>

        <!-- Location -->
        <a href="https://maps.google.com/maps/search/34+Dong+Ngac,+Hanoi" target="_blank" rel="noopener noreferrer" class="bg-gradient-to-br from-purple-600/20 to-purple-600/10 border border-purple-500/30 rounded-xl p-8 hover:border-purple-400/60 transition-all group">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl">📍</div>
            <svg class="w-5 h-5 text-purple-400 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-white mb-2">Location</h3>
          <p class="text-gray-300">34 Dong Ngac, Hanoi</p>
          <p class="text-sm text-gray-400 mt-2">Based in Vietnam</p>
        </a>

        <!-- GitHub -->
        <a href="https://github.com/thanhnam23-dev" target="_blank" rel="noopener noreferrer" class="bg-gradient-to-br from-gray-700/50 to-gray-800/30 border border-gray-600/50 rounded-xl p-8 hover:border-gray-400/60 transition-all group">
          <div class="flex items-center justify-between mb-4">
            <div class="text-4xl">💻</div>
            <svg class="w-5 h-5 text-gray-300 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </div>
          <h3 class="text-xl font-bold text-white mb-2">GitHub</h3>
          <p class="text-gray-300">@thanhnam23-dev</p>
          <p class="text-sm text-gray-400 mt-2">View my projects and contributions</p>
        </a>
      </div>

      <!-- Quick Message Section -->
      <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8">
        <h3 class="text-2xl font-bold text-white mb-6">Send Me a Message</h3>
        <form @submit.prevent="submitForm" class="space-y-4">
          <div>
            <input 
              v-model="form.name"
              type="text"
              placeholder="Your Name"
              class="w-full px-4 py-3 bg-gray-800 border border-gray-600 rounded-lg text-white placeholder-gray-500 focus:border-blue-500 focus:outline-none transition-colors"
            />
          </div>
          <div>
            <input 
              v-model="form.email"
              type="email"
              placeholder="Your Email"
              class="w-full px-4 py-3 bg-gray-800 border border-gray-600 rounded-lg text-white placeholder-gray-500 focus:border-blue-500 focus:outline-none transition-colors"
            />
          </div>
          <div>
            <textarea 
              v-model="form.message"
              placeholder="Your Message"
              rows="5"
              class="w-full px-4 py-3 bg-gray-800 border border-gray-600 rounded-lg text-white placeholder-gray-500 focus:border-blue-500 focus:outline-none transition-colors resize-none"
            ></textarea>
          </div>
          <p v-if="formMessage" :class="formMessage.type === 'success' ? 'text-green-400' : 'text-red-400'" class="text-sm">
            {{ formMessage.text }}
          </p>
          <button 
            type="submit"
            :disabled="isSubmitting"
            class="w-full px-6 py-3 bg-gradient-to-r from-blue-500 to-cyan-500 text-white font-semibold rounded-lg hover:shadow-lg hover:shadow-blue-500/50 transition-all disabled:opacity-50 disabled:cursor-not-allowed"
          >
            {{ isSubmitting ? 'Sending...' : 'Send Message' }}
          </button>
        </form>
      </div>

      <!-- Social Links -->
      <div class="mt-12 text-center">
        <p class="text-gray-400 mb-6">Or connect with me on social media</p>
        <div class="flex justify-center gap-4">
          <a href="https://github.com/thanhnam23-dev" target="_blank" rel="noopener noreferrer" class="w-12 h-12 bg-gray-800 border border-gray-700 rounded-full flex items-center justify-center text-gray-300 hover:bg-gray-700 hover:border-gray-600 transition-all">
            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
              <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v 3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
            </svg>
          </a>
          <a href="mailto:namkim102@gmail.com" class="w-12 h-12 bg-gray-800 border border-gray-700 rounded-full flex items-center justify-center text-gray-300 hover:bg-gray-700 hover:border-gray-600 transition-all">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
          </a>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'

const form = ref({
  name: '',
  email: '',
  message: ''
})

const isSubmitting = ref(false)
const formMessage = ref(null)

const submitForm = async () => {
  if (!form.value.name || !form.value.email || !form.value.message) {
    formMessage.value = { type: 'error', text: 'Please fill in all fields' }
    return
  }

  isSubmitting.value = true
  try {
    // In a real application, you would send this to your backend
    // For now, we'll just show a success message
    formMessage.value = { type: 'success', text: 'Message sent successfully! I\'ll get back to you soon.' }
    form.value = { name: '', email: '', message: '' }
    
    setTimeout(() => {
      formMessage.value = null
    }, 5000)
  } catch (error) {
    formMessage.value = { type: 'error', text: 'Error sending message. Please try again.' }
  } finally {
    isSubmitting.value = false
  }
}
</script>
