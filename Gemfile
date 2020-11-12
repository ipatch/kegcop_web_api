source 'https://rubygems.org'

# kegcop_web_api - rails app

ruby '2.6.6'

gem 'rails', '~> 4.2.11.3'
gem 'pg', '~> 0.21.0'
gem 'responders', '~> 2.4' # rails ~ 4.2.1 seperated `respond_to` to a gem
gem 'uglifier', '>= 1.3.0' # compress JS and CSS assets
gem 'paperclip', '~> 5.2.1' # managing file uploads
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 2.0.2', group: :doc
gem 'bcrypt', '~> 3.1.16' # has_secure_password

group :development, :test do
  # gem 'factory_girl', '~> 4.9.0'
  gem 'ffaker', '~> 2.10.0'
  gem 'rspec', '~> 3.8.0'
  gem 'shoulda-matchers', '~> 3.1.2'
  # gem 'ffaker', '~> 2.8', '>= 2.8.1'
  gem 'pry', '~> 0.13.1', group: :development
  # gem 'pry', '~> 0.11.3', group: :development
  # NOTE: cap gems are deprecated, app is now deployed to heroku
  gem 'capistrano', '~> 3.12.0', '>= 3.12.0'
  gem 'capistrano-rvm', '~> 0.1.2'
  # gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
  gem 'capistrano-rails', '~> 1.4'
  gem 'capistrano-bundler', '~> 1.4'
  # gem 'capistrano3-puma', '~> 3.1', '>= 3.1.1'
  gem 'capistrano3-nginx', '~> 3.0.1'
  gem "foreman", "~> 0.87.2"
  gem "factory_bot", "~> 5.2"
end

group :production do
  # gem 'puma', '~> 3.12.6'
  gem 'puma', '~> 5.0.4'
  gem "rails_12factor", "~> 0.0.3"
end



