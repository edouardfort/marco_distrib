// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"

//import "popper" je l'ai mis en commentaire parce que y a une erreur de base
import "bootstrap"

import "controllers"

document.addEventListener("turbo:load", function () {
  console.log("c'est chargé");
    document.querySelectorAll(".product-link").forEach(function (link) {
      link.addEventListener("click", function (event) {
        event.preventDefault();
        let image = this.querySelector(".image");
        image.style.transition = "transform 1s ease-in-out";
        image.style.transform = "scale(1.1)";
        image.style.zIndex="50";
        setTimeout(() => {
            image.style.transform = "rotate(5deg) translateY(500px)";
        }, 1000);

        setTimeout(() => {
          window.location.href = this.href;
        }, 1800);
      });
    });
  });
  