# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
Rails.application.config.assets.precompile += %w( beer-background.js )
Rails.application.config.assets.precompile += %w( bubbles.js )
Rails.application.config.assets.precompile += %w( gtag.js )
Rails.application.config.assets.precompile += %w( google-analytics.js )
