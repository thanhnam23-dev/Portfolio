<template>
  <div class="space-y-2">
    <div class="flex justify-between items-center">
      <span class="text-gray-700 dark:text-brand-text-secondary font-medium transition-colors">{{ skill }}</span>
      <span class="text-sm font-semibold text-brand-accent dark:text-brand-highlight">{{ percentage }}%</span>
    </div>
    <div class="w-full bg-gray-200 dark:bg-brand-dark/50 rounded-full h-2 overflow-hidden border border-gray-300 dark:border-brand-border transition-colors">
      <div 
        class="h-full bg-brand-accent rounded-full transition-all duration-1000 ease-out"
        :style="{ width: animated ? percentage + '%' : '0%' }"
      ></div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'

defineProps({
  skill: String,
  percentage: {
    type: [String, Number],
    required: true
  }
})

const animated = ref(false)

onMounted(() => {
  // Trigger animation after component mounts
  setTimeout(() => {
    animated.value = true
  }, 100)
})
</script>
