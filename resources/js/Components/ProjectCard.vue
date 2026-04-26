<template>
  <div
    class="group bg-white dark:bg-brand-surface border border-gray-200 dark:border-brand-border rounded-xl p-8 hover:border-brand-accent/50 dark:hover:border-brand-accent/50 transition-all hover:bg-gray-50 dark:hover:bg-brand-dark shadow-sm dark:shadow-none">
    <!-- Header with Icon and Status -->
    <div class="flex items-start justify-between mb-4">
      <div class="flex items-center gap-4">
        <div class="text-5xl transition-transform group-hover:scale-110 duration-300">{{ icon }}</div>
        <div>
          <h3 class="text-2xl font-bold text-gray-900 dark:text-brand-text-primary mb-1 transition-colors">{{ title }}
          </h3>
          <p class="text-sm text-gray-500 dark:text-brand-text-secondary transition-colors">{{ role }}</p>
        </div>
      </div>
      <div :class="statusColor"
        class="px-3 py-1 rounded-full text-white text-xs font-semibold whitespace-nowrap shadow-sm">
        {{ status }}
      </div>
    </div>

    <!-- Description -->
    <p class="text-gray-600 dark:text-brand-text-secondary leading-relaxed mb-6 transition-colors">
      {{ description }}
    </p>

    <!-- Highlights/Features -->
    <div class="mb-6">
      <p class="text-sm font-semibold text-gray-500 dark:text-brand-text-secondary/70 mb-3 transition-colors">Key
        Features:</p>
      <div class="flex flex-wrap gap-2">
        <span v-for="highlight in highlights" :key="highlight"
          class="px-3 py-1 bg-brand-accent/10 dark:bg-brand-accent/20 text-brand-accent dark:text-brand-highlight rounded-full text-xs border border-brand-accent/20 dark:border-brand-accent/30 group-hover:border-brand-accent dark:group-hover:border-brand-highlight/60 transition-all">
          {{ highlight }}
        </span>
      </div>
    </div>

    <!-- Tech Stack -->
    <div class="border-t border-gray-200 dark:border-brand-border pt-6 transition-colors">
      <p class="text-sm font-semibold text-gray-500 dark:text-brand-text-secondary/70 mb-3 transition-colors">Tech
        Stack:</p>
      <p class="text-gray-600 dark:text-brand-text-secondary text-sm leading-relaxed transition-colors">
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
