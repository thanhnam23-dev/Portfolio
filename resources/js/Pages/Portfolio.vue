<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 text-gray-100">
    <!-- Navigation -->
    <Navigation />

    <!-- Main Content -->
    <main class="overflow-hidden">
      <!-- Hero Section -->
      <Hero />

      <!-- About Section -->
      <About />

      <!-- Below the fold sections - Loaded Asynchronously for Performance -->
      <Skills />

      <Projects />

      <Contact />
    </main>

    <!-- Footer -->
    <Footer />
  </div>
</template>

<script setup>
import { defineAsyncComponent } from 'vue'
import Navigation from '@/Components/Navigation.vue'
import Hero from '@/Components/Hero.vue'
import About from '@/Components/About.vue'
import Footer from '@/Components/Footer.vue'

// Async Loading for components below the fold
const Skills = defineAsyncComponent(() => import('@/Components/Skills.vue'))
const Projects = defineAsyncComponent(() => import('@/Components/Projects.vue'))
const Contact = defineAsyncComponent(() => import('@/Components/Contact.vue'))
</script>

<style scoped>
main {
  scroll-behavior: smooth;
}
</style>
