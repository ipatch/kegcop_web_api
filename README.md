# README - KegCop-Web
This README contains steps necessary to get the [application](http://kegcop.chrisrjones.com/) up and running.

## Server Specs
- Ruby 2.0.0p353
- Apache/2.2.16
- Phusion Passenger version 4.0.26

##  System dependencies

##  Configuration / Setup
- Fork the repo.
- Clone the repo.<br />
*Note: If one tries to run this application after cloning, the first error presented in a web browser should be,"Missing secret_key_base for 'development' environment,"*
-     bundle install<br />
*Note: To prevent the above mentioned error from happening run the following command in the app
root*
-     rake secret<br />
*Note: create a secrets.yml file*
-     touch config/secrets.yml<br />
*Note: see this SO thread, for formatting of secrets.yml stackoverflow.com/questions/21136363*
- paste the secret token into config/secrets.yml
- create config/environments/development.rb
-     touch config/environments/development.rb
- Add the appropriate lines for the *development.rb* file for a rails 4.1.x app
- next create a *database.yml* file
*Note: copy or touch, whichever you prefer.*

## Database creation

##  Database initialization
- After a DB has been created with the appropiate privledges, run the following command
-      rake db:migrate RAILS_ENV=development 

##  How to run the test suite

##  Services (job queues, cache servers, search engines, etc.)

## Deployment instructions
