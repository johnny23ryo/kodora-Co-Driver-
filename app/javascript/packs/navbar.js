document.addEventListener('DOMContentLoaded', () => {
  const menuButton = document.getElementById('mobile-menu-button');
  const menu = document.getElementById('mobile-menu');

  menuButton.addEventListener('click', () => {
    menu.classList.toggle('hidden');
  });
});
