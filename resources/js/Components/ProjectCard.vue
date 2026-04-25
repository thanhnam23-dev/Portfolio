<template>
  <div class="group bg-white dark:bg-gradient-to-br dark:from-gray-700/30 dark:to-gray-800/30 border border-gray-200 dark:border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 dark:hover:border-blue-500/50 transition-all hover:bg-gray-50 dark:hover:bg-gray-700/50 shadow-sm dark:shadow-none">
    <!-- Header with Icon and Status -->
    <div class="flex items-start justify-between mb-4">
      <div class="flex items-center gap-4">
        <div class="text-5xl transition-transform group-hover:scale-110 duration-300">{{ icon }}</div>
        <div>
          <h3 class="text-2xl font-bold text-gray-900 dark:text-white mb-1 transition-colors">{{ title }}</h3>
          <p class="text-sm text-gray-500 dark:text-gray-400 transition-colors">{{ role }}</p>
        </div>
      </div>
      <div :class="statusColor" class="px-3 py-1 rounded-full text-white text-xs font-semibold whitespace-nowrap shadow-sm">
        {{ status }}
      </div>
    </div>

    <!-- Description -->
    <p class="text-gray-600 dark:text-gray-300 leading-relaxed mb-6 transition-colors">
      {{ description }}
    </p>

    <!-- Highlights/Features -->
    <div class="mb-6">
      <p class="text-sm font-semibold text-gray-500 dark:text-gray-400 mb-3 transition-colors">Key Features:</p>
      <div class="flex flex-wrap gap-2">
        <span v-for="highlight in highlights" :key="highlight" class="px-3 py-1 bg-blue-100 dark:bg-blue-500/20 text-blue-600 dark:text-blue-300 rounded-full text-xs border border-blue-200 dark:border-blue-500/30 group-hover:border-blue-400 dark:group-hover:border-blue-500/60 transition-all">
          {{ highlight }}
        </span>
      </div>
    </div>

    <!-- Tech Stack -->
    <div class="border-t border-gray-200 dark:border-gray-600/50 pt-6 transition-colors">
      <p class="text-sm font-semibold text-gray-500 dark:text-gray-400 mb-3 transition-colors">Tech Stack:</p>
      <p class="text-gray-600 dark:text-gray-300 text-sm leading-relaxed transition-colors">
        {{ techStack }}
      </p>
    </div>
  </div>
</template>

<script setup>
defineProps({
  title: String,
  status: String,
  role: String,
  description: String,
  techStack: String,
  highlights: Array,
  statusColor: String,
  icon: String,
})
</script>
