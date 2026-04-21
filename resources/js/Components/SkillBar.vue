<template>
  <div class="space-y-2">
    <div class="flex justify-between items-center">
      <span class="text-gray-300 font-medium">{{ skill }}</span>
      <span class="text-sm font-semibold text-blue-400">{{ percentage }}%</span>
    </div>
    <div class="w-full bg-gray-700/50 rounded-full h-2 overflow-hidden border border-gray-600/30">
      <div 
        class="h-full bg-gradient-to-r from-blue-500 to-cyan-400 rounded-full transition-all duration-1000 ease-out"
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
