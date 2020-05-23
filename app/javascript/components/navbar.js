const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('body > div.navbar.navbar-expand-sm.navbar-light.navbar-lewagon.fixed-top');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-color');
      } else {
        navbar.classList.remove('navbar-color');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
