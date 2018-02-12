source 'https://rubygems.org'

# kegcop_web_api - rails app

ruby "2.3.1"

gem 'rails', '~> 4.2.7.1'
gem 'pg', '~> 0.20.0'

# added per "RESTful Rails Development"
gem 'rails-api', '~> 0.4.1'

# added per "RESTful Rails Development"
gem 'activerecord-postgis-adapter', '~> 5.2'

# add gem sqlite3 for travis-ci.org support
# gem 'sqlite3'

# rails ~ 4.2.1 extracted the 'respond_to' feature into a gem
gem 'responders', '~> 2.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
# removed 'coffe-rails' per this guide,
# https://dockyard.com/blog/2014/05/07/building-an-ember-app-with-rails-part-1

gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.2.4'
# gem for parsing JSON
gem 'oj', '~> 2.10.4'

#API - Serializer for JSON
gem 'active_model_serializers', '~> 0.10.7'

# gem for handling file uploads within a rails app
gem 'refile', '~> 0.6.2'
gem 'refile-mini_magick', '~> 0.2.0', :git => 'git://github.com:refile/refile-mini_magick.git'
#gem 'mini_magick', '~> 3.7.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Include a JS Runtime environment to prevent erroneous errors
gem 'therubyracer', '~> 0.12.3'

# a gem that brings up HTTP status code
gem 'cheat', '~> 1.3', '>= 1.3.3'

# add gem to support contact form
gem 'active_attr', '~> 0.10.2'

# add support for the JavaScript library D3
gem 'd3_rails', '~> 4.1', '>= 4.1.1'

group :test do
	gem 'rspec', '~> 3.1.0'
	gem 'factory_girl', '~> 4.5.0'
	gem 'shoulda-matchers', '~> 2.7.0'
	gem 'ffaker', '~> 2.8', '>= 2.8.1'
end

gem 'geocoder', '~> 1.2.5'

gem 'pry', '~> 0.11.3', group: :development

# group :development do
    gem 'capistrano', '~> 3.10', '>= 3.10.1'
    gem 'capistrano-rvm', '~> 0.1.2'
    gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
    gem 'capistrano-bundler', '~> 1.3'
    gem 'capistrano3-puma', '~> 3.1', '>= 3.1.1'
    gem 'capistrano3-nginx', '~> 2.0'
# end

group :production do
  gem 'puma', '~> 3.11', '>= 3.11.2'
end
