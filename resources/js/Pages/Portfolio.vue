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

      <!-- Skills Section -->
      <Skills />

      <!-- Projects Section -->
      <Projects />

      <!-- Contact Section -->
      <Contact />
    </main>

    <!-- Footer -->
    <Footer />
  </div>
</template>

<script setup>
import Navigation from '@/Components/Navigation.vue'
import Hero from '@/Components/Hero.vue'
import About from '@/Components/About.vue'
import Skills from '@/Components/Skills.vue'
import Projects from '@/Components/Projects.vue'
import Contact from '@/Components/Contact.vue'
import Footer from '@/Components/Footer.vue'
</script>

<style scoped>
main {
  scroll-behavior: smooth;
}
</style>
