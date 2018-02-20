# config/application.rb for KegCopWebApi

require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'yaml'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# NOTE: Ruby follows the MixedCase naming convention
#...for class and module names.

module KegCopWebApi

  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Load the environment variables at beginning
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'secrets.yml').to_s
        
      if File.exist?(env_file)
        YAML.load_file(env_file)[Rails.env].map do |key, value|
        ENV[key.to_s] = value.to_s
        end
      end
    end

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Central Time (US & Canada)'
    config.active_record.default_timezone = :local

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # NOTE: to prevent
    #... NoMethodError (undefined method `flash' for #<ActionDispatch::
    config.middleware.use ActionDispatch::Flash

    # set the default JS engine to standard JS as opposed
    #...to using coffee-script
    config.generators do |g|
      g.javascript_engine :js
    end

    # add additional paths for public/assets
    config.assets.paths << "#{Rails.root}/assets/javascripts"
  end
end
