window.addEventListener("load", (event) => {

  const btnNavEl = document.querySelector(".btn-mobile-nav");
  const headerEl = document.querySelector(".header");

  btnNavEl.addEventListener('click', function () {
    headerEl.classList.toggle("nav-open")
  })

  /** changing image on product page */
  function changeImage(newImageSrc) {
    var mainImage = document.getElementById('mainImage');
    mainImage.src = newImageSrc;
  }







});

