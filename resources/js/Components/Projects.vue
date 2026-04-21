<template>
  <section id="projects" class="py-20 px-4 sm:px-6 lg:px-8 bg-gray-800/50">
    <div class="max-w-6xl mx-auto">
      <!-- Section Title -->
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent mb-4">
          {{ t('projects_title') }}
        </h2>
        <p class="text-gray-400 text-lg">{{ t('projects_subtitle') }}</p>
      </div>

      <!-- Projects Grid -->
      <div class="space-y-8">
        <!-- Project Card 1 - PetAI -->
        <ProjectCard
          :title="t('project_petai_title')"
          :status="t('project_petai_status')"
          :role="t('project_petai_role')"
          :description="t('project_petai_desc')"
          :techStack="t('project_petai_tech')"
          :highlights="[t('project_petai_h1'), t('project_petai_h2'), t('project_petai_h3'), t('project_petai_h4')]"
          status-color="bg-gradient-to-r from-green-500 to-emerald-500"
          icon="🤖"
        />

        <!-- Project Card 2 - Furniture E-commerce -->
        <ProjectCard
          :title="t('project_furniture_title')"
          :status="t('project_furniture_status')"
          :role="t('project_furniture_role')"
          :description="t('project_furniture_desc')"
          :techStack="t('project_furniture_tech')"
          :highlights="[t('project_furniture_h1'), t('project_furniture_h2'), t('project_furniture_h3'), t('project_furniture_h4'), t('project_furniture_h5')]"
          status-color="bg-gradient-to-r from-blue-500 to-cyan-500"
          icon="🛋️"
        />

        <!-- Project Card 3 - Toy Store Website -->
        <ProjectCard
          :title="t('project_toy_title')"
          :status="t('project_toy_status')"
          :role="t('project_toy_role')"
          :description="t('project_toy_desc')"
          :techStack="t('project_toy_tech')"
          :highlights="[t('project_toy_h1'), t('project_toy_h2'), t('project_toy_h3'), t('project_toy_h4'), t('project_toy_h5')]"
          status-color="bg-gradient-to-r from-purple-500 to-pink-500"
          icon="🧸"
        />

        <!-- Project Card 4 - Traffic Sign Recognition -->
        <ProjectCard
          :title="t('project_traffic_title')"
          :status="t('project_traffic_status')"
          :role="t('project_traffic_role')"
          :description="t('project_traffic_desc')"
          :techStack="t('project_traffic_tech')"
          :highlights="[t('project_traffic_h1'), t('project_traffic_h2'), t('project_traffic_h3'), t('project_traffic_h4')]"
          status-color="bg-gradient-to-r from-orange-500 to-red-500"
          icon="🚦"
        />
      </div>

      <!-- CTA Button -->
      <div class="text-center mt-16">
        <a href="https://github.com/thanhnam23-dev" target="_blank" rel="noopener noreferrer" class="inline-flex items-center gap-2 px-8 py-3 bg-gradient-to-r from-blue-500 to-cyan-500 text-white font-semibold rounded-lg hover:shadow-lg hover:shadow-blue-500/50 transition-all transform hover:scale-105">
          <span>{{ t('projects_github') }}</span>
          <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
            <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v 3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
          </svg>
        </a>
      </div>
    </div>
  </section>
</template>

<script setup>
import ProjectCard from './ProjectCard.vue'
import { useTranslation } from '@/Composables/useTranslation'

const { t } = useTranslation()
</script>
