<template>
  <section id="projects" class="py-20 px-4 sm:px-6 lg:px-8 bg-gray-800/50">
    <div class="max-w-6xl mx-auto">
      <!-- Section Title -->
      <div class="text-center mb-16">
        <h2 class="text-3xl sm:text-4xl font-bold bg-gradient-to-r from-blue-400 to-cyan-400 bg-clip-text text-transparent mb-4">
          Featured Projects
        </h2>
        <p class="text-gray-400 text-lg">Showcasing my recent work</p>
      </div>

      <!-- Projects Grid -->
      <div class="space-y-8">
        <!-- Project Card 1 - PetAI -->
        <ProjectCard
          title="PetAI - Capstone Project"
          status="Present"
          role="Fullstack & AI Developer"
          description="Developed an AI-powered system for pet breed identification (Dogs/Cats) and user-matching consultation. Integrated advanced computer vision for accurate breed detection and matching algorithms for pet-user compatibility."
          techStack="Python, FastAPI, React/Vue, YOLO, CNN, Machine Learning"
          :highlights="['AI Breed Identification', 'User Matching System', 'Computer Vision (YOLO/CNN)', 'Real-time Processing']"
          status-color="bg-gradient-to-r from-green-500 to-emerald-500"
          icon="🤖"
        />

        <!-- Project Card 2 - Furniture E-commerce -->
        <ProjectCard
          title="Furniture E-commerce Website"
          status="10/2025 - 12/2025"
          role="Backend Developer"
          description="Built a comprehensive furniture e-commerce platform using Service-Oriented Architecture (SOA). Implemented complete user authentication system with OTP verification via email, advanced cart/order management, and multiple payment gateway integrations."
          techStack="PHP/Laravel, MySQL, VNPay, MoMo, RESTful APIs"
          :highlights="['SOA Architecture', 'OTP Email Authentication', 'Multi-Payment Integration', 'RESTful APIs', 'Order Management']"
          status-color="bg-gradient-to-r from-blue-500 to-cyan-500"
          icon="🛋️"
        />

        <!-- Project Card 3 - Toy Store Website -->
        <ProjectCard
          title="Toy Store Website"
          status="01/2026 - 03/2026"
          role="Fullstack Developer"
          description="Developed a full-featured toy store e-commerce platform with monolithic architecture. Implemented user authentication, comprehensive product management, order processing, and multiple payment method integration."
          techStack="Laravel, VueJS, MySQL, TailwindCSS"
          :highlights="['Monolithic Architecture', 'User Authentication', 'Product Management', 'Order Processing', 'Multiple Payment Methods']"
          status-color="bg-gradient-to-r from-purple-500 to-pink-500"
          icon="🧸"
        />

        <!-- Project Card 4 - Traffic Sign Recognition -->
        <ProjectCard
          title="Traffic Sign Recognition System"
          status="Completed"
          role="Machine Learning Developer"
          description="Built and trained a Convolutional Neural Network (CNN) model using MobileNetV2 for image classification and traffic sign recognition. Achieved high accuracy in real-world traffic sign detection scenarios."
          techStack="Python, MobileNetV2, CNN, TensorFlow, OpenCV"
          :highlights="['CNN Model (MobileNetV2)', 'Image Classification', 'Traffic Sign Detection', 'Model Training & Optimization']"
          status-color="bg-gradient-to-r from-orange-500 to-red-500"
          icon="🚦"
        />
      </div>

      <!-- CTA Button -->
      <div class="text-center mt-16">
        <a href="https://github.com/thanhnam23-dev" target="_blank" rel="noopener noreferrer" class="inline-flex items-center gap-2 px-8 py-3 bg-gradient-to-r from-blue-500 to-cyan-500 text-white font-semibold rounded-lg hover:shadow-lg hover:shadow-blue-500/50 transition-all transform hover:scale-105">
          <span>View More on GitHub</span>
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
</script>
