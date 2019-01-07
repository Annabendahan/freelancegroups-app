function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 0.5 * window.innerHeight) {
        navbar.classList.add('main-nav-white');
      } else {
        navbar.classList.remove('main-nav-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };



