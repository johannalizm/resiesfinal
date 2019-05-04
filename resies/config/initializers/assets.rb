# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w( login.css , mostrarins.js)
Rails.application.config.assets.precompile += %w( mostrar.css)
Rails.application.config.assets.precompile += %w( registro.css)
Rails.application.config.assets.precompile += %w( preg.css)
Rails.application.config.assets.precompile += %w( jr.js)
Rails.application.config.assets.precompile += %w( pre.js)
Rails.application.config.assets.precompile += %w( menu.css)
Rails.application.config.assets.precompile += %w( manualresies.css)
Rails.application.config.assets.precompile += %w( dynamic_states.js)
Rails.application.config.assets.precompile += %w( mostrarpregunta.css)
Rails.application.config.assets.precompile += %w( questions.js.coffee)
Rails.application.config.assets.precompile += %w( formulariomostrar.css)
Rails.application.config.assets.precompile += %w( chartkick.js )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
