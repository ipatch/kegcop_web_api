# README - KegCop-Web
This README contains steps necessary to get the [application](http://kegcop.chrisrjones.com/) up and running.

## Server Specs
- Ruby 2.0.0p353
- Apache/2.2.16
- Phusion Passenger version 4.0.26

##  System dependencies

##  Configuration / Setup
1.  Fork the repo.
2.  Clone the newly forked repo.<br />
*Note: If one tries to run this application after cloning, the first error presented in a web browser should be,"Missing secret_key_base for 'development' environment,"*<br />
3. <code>bundle install</code><br />
*Note: To prevent the above mentioned error from happening run the following command in the app
root*<br />
4. <code>rake secret</code><br />
*Note: create a secrets.yml file*<br />
5. <code>touch config/secrets.yml</code><br />
*Note: see [this SO thread](stackoverflow.com/questions/21136363/) for formatting of secrets.yml*
6. paste the secret token into config/secrets.yml
7. create config/environments/development.rb<br />
<code>touch config/environments/development.rb</code>
8. Add the appropriate lines for the *development.rb* file for a rails 4.1.x app
9. next create a *database.yml* file<br />
*Note: copy or touch, whichever you prefer.*

## Database creation

##  Database initialization
- After a DB has been created with the appropiate privledges, run the following command
-      rake db:migrate RAILS_ENV=development 

##  How to run the test suite

##  Services (job queues, cache servers, search engines, etc.)

## Deployment instructions
