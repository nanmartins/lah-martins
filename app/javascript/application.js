// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import { Turbo } from "@hotwired/turbo-rails"

// custom js import
import "./custom/navDropDown";


Turbo.session.drive = false;


document.addEventListener("DOMContentLoaded", () => {
  if (typeof flash !== "undefined" && flash.notice) {
    alert(flash.notice);
  }
});


document.addEventListener("DOMContentLoaded", () => {
  const flashContainer = document.querySelector(".flash-message");

  if (flashContainer) {
    setTimeout(() => {
      flashContainer.remove();
    }, 6000); // remove after 6 seconds
  }
});
