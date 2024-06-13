// import { Application } from "@hotwired/stimulus"

// const application = Application.start()

// // Configure Stimulus development experience
// application.debug = false
// window.Stimulus   = application

// export { application }

import { Turbo } from "@hotwired/turbo-rails"
import { Application } from "@hotwired/stimulus"
import { definitionsFromContext } from "@hotwired/stimulus-loading"

window.Stimulus = Application.start()
const context = require.context("controllers", true, /\.js$/)
Stimulus.load(definitionsFromContext(context))
