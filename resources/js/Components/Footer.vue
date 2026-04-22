<template>
  <footer class="bg-gray-900 border-t border-gray-700 py-12 px-4 sm:px-6 lg:px-8">
    <div class="max-w-6xl mx-auto">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-8">
        <!-- About Footer Section -->
        <div>
          <div class="flex items-center space-x-2 mb-4">
            <div
              class="w-8 h-8 bg-gradient-to-br from-blue-400 to-cyan-400 rounded-lg flex items-center justify-center">
              <span class="text-gray-900 font-bold">T</span>
            </div>
            <span class="text-lg font-bold text-gray-100">Truong Thanh Nam</span>
          </div>
          <p class="text-gray-400 text-sm">
            Fullstack Developer passionate about building robust web systems and scalable architectures.
          </p>
        </div>

        <!-- Quick Links -->
        <div>
          <h4 class="text-white font-semibold mb-4">Quick Links</h4>
          <ul class="space-y-2 text-sm">
            <li><a href="#about" class="text-gray-400 hover:text-blue-400 transition-colors">About</a></li>
            <li><a href="#skills" class="text-gray-400 hover:text-blue-400 transition-colors">Skills</a></li>
            <li><a href="#projects" class="text-gray-400 hover:text-blue-400 transition-colors">Projects</a></li>
            <li><a href="#contact" class="text-gray-400 hover:text-blue-400 transition-colors">Contact</a></li>
          </ul>
        </div>

        <!-- Contact Info -->
        <div>
          <h4 class="text-white font-semibold mb-4">Contact</h4>
          <ul class="space-y-2 text-sm">
            <li><a href="mailto:namkim102@gmail.com"
                class="text-gray-400 hover:text-blue-400 transition-colors">namkim102@gmail.com</a></li>
            <li><a href="tel:0969446782" class="text-gray-400 hover:text-blue-400 transition-colors">0969446782</a></li>
            <li><a href="https://github.com/thanhnam23-dev" target="_blank" rel="noopener noreferrer"
                class="text-gray-400 hover:text-blue-400 transition-colors">GitHub</a></li>
          </ul>
        </div>
      </div>

      <!-- Divider -->
      <div class="border-t border-gray-700 my-8"></div>

      <!-- Bottom Footer -->
      <div class="flex flex-col md:flex-row justify-between items-center text-sm text-gray-400">
        <p>&copy; 2026 Truong Thanh Nam. All rights reserved.</p>
        <p class="mt-4 md:mt-0">
          Built with <span class="text-red-400">❤️</span> using Laravel, VueJS & TailwindCSS
        </p>
      </div>
    </div>
  </footer>
</template>
