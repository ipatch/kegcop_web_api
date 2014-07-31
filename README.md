== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
- The Ruby version running on the server is ruby 2.0.0p353
- The Web Server running on the server is Apache, Apache/2.2.16
- The plugin for Apache is modrails / Phusion Passenger, Phusion Passenger version 4.0.26

* System dependencies

* Configuration
- After cloning the repo w/ git, run "bundle install"

- If one tries to run this application after cloning, the first error presented in a web browser should be,"Missing `secret_key_base` for 'development' environment,"

- to prevent the above mentioned error from happening run the following command in the app root
- $ rake secret

- create a secrets.yml file
- $ touch config/secrets.yml

- see this SO thread, for formatting of secrets.yml stackoverflow.com/questions/21136363

- paste the secret token into config/secrets.yml

- create config/environments/development.rb
- $ touch config/environments/development.rb

- Add the appropriate lines for the development.rb file for a rails 4.1.x app

- next create a database.yml file
- copy or touch, whichever you prefer.

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
