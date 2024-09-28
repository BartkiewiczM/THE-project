// app/javascript/controllers/sidebar_controller.js

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="partners-sidebar"
export default class extends Controller {
  static targets = ["sidebar", "arrowIcon"]

  toggle() {
    this.sidebarTarget.classList.toggle("-translate-x-full")

    // Toggle the arrow direction
    if (this.sidebarTarget.classList.contains("-translate-x-full")) {
      this.arrowIconTarget.innerHTML = `<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />`
    } else {
      this.arrowIconTarget.innerHTML = `<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />`
    }
  }
}
