source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# added per "RESTful Rails Development"
gem 'rails-api'

# PostgreSQL gem (database adapter)
gem 'pg'

# added per "RESTful Rails Development"
gem 'activerecord-postgis-adapter'

# add mysql2 gem for travis-ci.org support
# gem 'mysql2'

# add gem sqlite3 for travis-ci.org support
gem 'sqlite3'

# rails ~ 4.2.1 extracted the 'respond_to' feature into a gem
gem 'responders'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
# removed 'coffe-rails' per this guide,
# https://dockyard.com/blog/2014/05/07/building-an-ember-app-with-rails-part-1

# gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
# gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.2.4'
# gem for parsing JSON
gem 'oj', '~> 2.10.4'

#API - Serializer for JSON 
gem 'active_model_serializers'

# gem for handling file uploads within a rails app
gem 'refile', github: 'refile/refile', require: 'refile/rails'
gem 'refile-mini_magick'
#gem 'mini_magick', '~> 3.7.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# <-- BELOW ARE THE USER ADDED GEMS (NON DEFAULT) -->

# Include a JS Runtime environment to prevent erroneous errors
gem 'therubyracer'

# a gem that brings up HTTP status code
gem 'cheat'

# add twitter-bootstrap-rails to project,
# https://github.com/seyhunak/twitter-bootstrap-rails
gem 'less-rails'
gem 'twitter-bootstrap-rails', '~> 3.2.0'

# add gem to support contact form
gem 'active_attr', :git => 'git://github.com/cgriego/active_attr.git'

# add support for the JavaScript library D3
gem 'd3_rails', :git => 'git://github.com/logical42/d3_rails.git'

group :test do
	gem 'rspec', '~> 3.1.0'
	gem 'factory_girl', '~> 4.5.0'
	gem 'shoulda-matchers', '~> 2.7.0'
	gem 'ffaker'
end

gem 'puma', group: :production


gem 'geocoder', '~> 1.2.5'
# gems required to add the helios framework.
#gem 'helios'
# gem 'dotenv'
gem 'pry', group: :development

# add ember-rails-cli to hopefully be able to CRUD attachments
# gem 'ember-rails'
# gem 'ember-source', '~> 2.1'
# gem "ember-cli-rails"
# decided to make ember app independent of rails app.