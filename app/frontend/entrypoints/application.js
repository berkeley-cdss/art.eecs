// JavaScript entry point for the Vite build.
// See config/vite.json and vite.config.mts for build configuration.
import htmx from "htmx.org"
import * as ActiveStorage from "@rails/activestorage"
import "@37signals/lexxy"

import "bootstrap-icons/font/bootstrap-icons.css"

// Direct uploads for Lexxy/Action Text attachments.
ActiveStorage.start()

// Expose htmx for debugging and for extensions loaded elsewhere.
window.htmx = htmx

// Send the Rails CSRF token with every htmx request.
document.addEventListener("htmx:configRequest", (event) => {
  const token = document.querySelector("meta[name='csrf-token']")?.content
  if (token) event.detail.headers["X-CSRF-Token"] = token
})
