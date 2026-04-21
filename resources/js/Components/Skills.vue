<template>
  <section id="skills" class="py-20 px-4 sm:px-6 lg:px-8">
    <div class="max-w-6xl mx-auto">
      <!-- Section Title -->
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent mb-4">
          Technical Skills
        </h2>
        <p class="text-gray-400 text-lg">Technologies I work with</p>
      </div>

      <!-- Skills Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <!-- Backend Skills -->
        <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-blue-500/50 transition-all">
          <h3 class="text-2xl font-bold text-blue-400 mb-6 flex items-center gap-2">
            <span class="text-3xl">⚙️</span> Backend
          </h3>
          <div class="space-y-4">
            <SkillBar skill="PHP & Laravel" percentage="95" />
            <SkillBar skill="RESTful APIs" percentage="90" />
            <SkillBar skill="MVC Architecture" percentage="85" />
            <SkillBar skill="SOA (Service-Oriented)" percentage="80" />
            <SkillBar skill="MySQL Database Design" percentage="88" />
          </div>
        </div>

        <!-- Frontend Skills -->
        <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-cyan-500/50 transition-all">
          <h3 class="text-2xl font-bold text-cyan-400 mb-6 flex items-center gap-2">
            <span class="text-3xl">🎨</span> Frontend
          </h3>
          <div class="space-y-4">
            <SkillBar skill="VueJS 3" percentage="90" />
            <SkillBar skill="TailwindCSS" percentage="92" />
            <SkillBar skill="JavaScript" percentage="88" />
            <SkillBar skill="HTML5 & CSS3" percentage="92" />
            <SkillBar skill="Inertia.js" percentage="85" />
          </div>
        </div>

        <!-- Database & Tools -->
        <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-purple-500/50 transition-all">
          <h3 class="text-2xl font-bold text-purple-400 mb-6 flex items-center gap-2">
            <span class="text-3xl">💾</span> Database & Tools
          </h3>
          <div class="space-y-4">
            <SkillBar skill="MySQL" percentage="90" />
            <SkillBar skill="Git & GitHub" percentage="88" />
            <SkillBar skill="Command Line (CLI)" percentage="85" />
            <SkillBar skill="RESTful API Design" percentage="90" />
          </div>
        </div>

        <!-- Programming Languages -->
        <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-8 hover:border-green-500/50 transition-all">
          <h3 class="text-2xl font-bold text-green-400 mb-6 flex items-center gap-2">
            <span class="text-3xl">🔤</span> Programming Languages
          </h3>
          <div class="space-y-4">
            <SkillBar skill="PHP" percentage="95" />
            <SkillBar skill="Python" percentage="80" />
            <SkillBar skill="JavaScript" percentage="88" />
            <SkillBar skill="C++" percentage="75" />
            <SkillBar skill="Java (Basic)" percentage="70" />
          </div>
        </div>
      </div>

      <!-- Additional Skills -->
      <div class="mt-12 grid grid-cols-1 md:grid-cols-2 gap-6">
        <!-- Architecture Patterns -->
        <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-6">
          <h4 class="text-lg font-semibold text-blue-400 mb-4 flex items-center gap-2">
            <span>🏗️</span> Architecture Patterns
          </h4>
          <div class="flex flex-wrap gap-2">
            <span v-for="arch in architectures" :key="arch" class="px-3 py-1 bg-blue-500/20 text-blue-300 rounded-full text-sm border border-blue-500/30">
              {{ arch }}
            </span>
          </div>
        </div>

        <!-- Payment Integration -->
        <div class="bg-gradient-to-br from-gray-700/50 to-gray-800/50 border border-gray-600/50 rounded-xl p-6">
          <h4 class="text-lg font-semibold text-purple-400 mb-4 flex items-center gap-2">
            <span>💳</span> Payment Integration
          </h4>
          <div class="flex flex-wrap gap-2">
            <span v-for="payment in payments" :key="payment" class="px-3 py-1 bg-purple-500/20 text-purple-300 rounded-full text-sm border border-purple-500/30">
              {{ payment }}
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

const architectures = ref(['Monolithic', 'Service-Oriented Architecture (SOA)', 'RESTful Design'])
const payments = ref(['VNPay', 'MoMo', 'COD', 'OTP via Email'])
</script>
