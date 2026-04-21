<template>
  <section id="about" class="py-20 px-4 sm:px-6 lg:px-8 bg-gray-800/50">
    <div class="max-w-4xl mx-auto">
      <!-- Section Title -->
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent mb-4">
          About Me
        </h2>
        <p class="text-gray-400 text-lg">Get to know me better</p>
      </div>

      <!-- Main Content -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-12">
        <!-- Career Objective -->
        <div class="md:col-span-2 space-y-6">
          <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all">
            <h3 class="text-2xl font-bold text-blue-400 mb-4 flex items-center gap-2">
              🎯 Career Objective
            </h3>
            <p class="text-gray-300 leading-relaxed text-lg">
              Senior year IT student oriented towards Backend Development with PHP/Laravel. Seeking a practical environment to enhance skills in building robust web systems with scalable architecture, RESTful APIs, and modern development practices.
            </p>
          </div>

          <!-- Education -->
          <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all">
            <h3 class="text-2xl font-bold text-blue-400 mb-6 flex items-center gap-2">
              🎓 Education
            </h3>
            <div class="space-y-4">
              <div class="border-l-2 border-cyan-500 pl-4">
                <h4 class="text-xl font-semibold text-white">Hanoi Architectural University</h4>
                <p class="text-gray-400 mt-1">Information Technology Major</p>
                <p class="text-sm text-gray-500 mt-2">2022 - 2027 (Currently Senior Year)</p>
              </div>
              <div class="mt-4 p-4 bg-gray-800/50 rounded-lg">
                <div class="flex justify-between items-center">
                  <span class="text-gray-300">GPA</span>
                  <span class="text-xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent">8.28 / 10</span>
                </div>
                <div class="text-sm text-gray-400 mt-1">(3.41 / 4.0)</div>
              </div>
            </div>
          </div>
        </div>

        <!-- Quick Stats -->
        <div class="space-y-4">
          <!-- Stat Card Template -->
          <div v-for="stat in stats" :key="stat.label" class="bg-gradient-to-br from-blue-600/20 to-cyan-600/20 border border-blue-500/30 rounded-xl p-6 text-center hover:border-blue-400/50 transition-all">
            <div class="text-3xl mb-2">{{ stat.icon }}</div>
            <div class="text-2xl font-bold text-blue-400">{{ stat.value }}</div>
            <div class="text-sm text-gray-400 mt-2">{{ stat.label }}</div>
          </div>
        </div>
      </div>

      <!-- Languages -->
      <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8">
        <h3 class="text-2xl font-bold text-blue-400 mb-6 flex items-center gap-2">
          🌐 Languages
        </h3>
        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <div class="flex items-center justify-between p-4 bg-gray-800/50 rounded-lg">
            <span class="text-gray-300 font-medium">English</span>
            <span class="text-cyan-400 font-semibold">Reading Comprehension</span>
          </div>
          <div class="flex items-center justify-between p-4 bg-gray-800/50 rounded-lg">
            <span class="text-gray-300 font-medium">Japanese</span>
            <span class="text-cyan-400 font-semibold">JLPT N4</span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue'

const stats = ref([
  { icon: '💼', value: '4+', label: 'Projects' },
  { icon: '🎯', value: '6+', label: 'Tech Skills' },
  { icon: '🚀', value: '2+', label: 'Years Exp' },
])
</script>
