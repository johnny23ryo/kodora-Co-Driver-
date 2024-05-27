// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

// Hamburger menu functionality
document.addEventListener('DOMContentLoaded', () => {
  const menuButton = document.getElementById('mobile-menu-button');
  const mobileMenu = document.getElementById('mobile-menu');

  if (menuButton && mobileMenu) {
    menuButton.addEventListener('click', () => {
      const isExpanded = menuButton.getAttribute('aria-expanded') === 'true';
      menuButton.setAttribute('aria-expanded', !isExpanded);
      mobileMenu.classList.toggle('hidden');
      menuButton.querySelector('svg:nth-child(1)').classList.toggle('hidden');
      menuButton.querySelector('svg:nth-child(2)').classList.toggle('hidden');
    });
  }
});

import Rails from "@rails/ujs"

Rails.start()