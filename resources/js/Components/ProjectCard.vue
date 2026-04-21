<template>
  <div class="group bg-gradient-to-br from-gray-700/30 to-gray-800/30 border border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all hover:bg-gray-700/50">
    <!-- Header with Icon and Status -->
    <div class="flex items-start justify-between mb-4">
      <div class="flex items-center gap-4">
        <div class="text-5xl">{{ icon }}</div>
        <div>
          <h3 class="text-2xl font-bold text-white mb-1">{{ title }}</h3>
          <p class="text-sm text-gray-400">{{ role }}</p>
        </div>
      </div>
      <div :class="statusColor" class="px-3 py-1 rounded-full text-white text-xs font-semibold whitespace-nowrap">
        {{ status }}
      </div>
    </div>

    <!-- Description -->
    <p class="text-gray-300 leading-relaxed mb-6">
      {{ description }}
    </p>

    <!-- Highlights/Features -->
    <div class="mb-6">
      <p class="text-sm font-semibold text-gray-400 mb-3">Key Features:</p>
      <div class="flex flex-wrap gap-2">
        <span v-for="highlight in highlights" :key="highlight" class="px-3 py-1 bg-blue-500/20 text-blue-300 rounded-full text-xs border border-blue-500/30 group-hover:border-blue-500/60 transition-colors">
          {{ highlight }}
        </span>
      </div>
    </div>

    <!-- Tech Stack -->
    <div class="border-t border-gray-600/50 pt-6">
      <p class="text-sm font-semibold text-gray-400 mb-3">Tech Stack:</p>
      <p class="text-gray-300 text-sm leading-relaxed">
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
