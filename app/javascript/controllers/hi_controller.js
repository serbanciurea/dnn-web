import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hi"
export default class extends Controller {
  connect() {
    console.log('ana are mere', this.element);
  }
}
