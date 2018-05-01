source 'https://rubygems.org'

# kegcop_web_api - rails app

ruby "2.3.1"

gem 'rails', '~> 4.2.10'
gem 'pg', '~> 0.20.0'
gem 'responders', '~> 2.4' # rails ~ 4.2.1 seperated `respond_to` to a gem
gem 'uglifier', '>= 1.3.0' # compress JS and CSS assets
gem 'paperclip', '~> 5.2.1' # managing file uploads
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.7' # has_secure_password

group :test do
	gem 'rspec', '~> 3.7.0'
	gem 'factory_girl', '~> 4.5.0'
	gem 'shoulda-matchers', '~> 2.7.0'
	gem 'ffaker', '~> 2.8', '>= 2.8.1'
end

gem 'pry', '~> 0.11.3', group: :development

gem 'capistrano', '~> 3.10', '>= 3.10.1'
gem 'capistrano-rvm', '~> 0.1.2'
gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
gem 'capistrano-bundler', '~> 1.3'
gem 'capistrano3-puma', '~> 3.1', '>= 3.1.1'
gem 'capistrano3-nginx', '~> 2.0'

group :production do
  gem 'puma', '~> 3.11', '>= 3.11.2'
end
