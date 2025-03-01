import { Controller } from "@hotwired/stimulus"

// how to bind keys with stimulus
// https://stimulus.hotwired.dev/reference/actions#keyboardevent-filter

export default class extends Controller {
  connect() {}

  // I'm sure there is a better way to do it, let me know pls :)
  click() {
    this.element.click();
  }
}
