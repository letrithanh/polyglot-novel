// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { UploadImageHandler } from "./custom/upload-file"

// Workaround to use custom javascript
window.JS = {
    UploadImageHandler
}