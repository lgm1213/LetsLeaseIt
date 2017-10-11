# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join("vendor", "assets", "images")
Rails.application.config.assets.paths << Rails.root.join("vendor", "assets", "javascripts")
Rails.application.config.assets.paths << Rails.root.join("vendor", "assets", "stylesheets")

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( admin.js admin.css appointments.js appointments.scss buildings.js buildings.scss companies.js companies.scss inspinia.js landing.js landing.scss listings.js listings.scss sessions.js sessions.scss users.js users.scss)
