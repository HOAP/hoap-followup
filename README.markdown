Hunter Outpatient Alcohol Project (HOAP)
========================================

This is the 6-month follow-up survey for the HOAP project. Participants
were sent and email and a letter with a link to this survey, with their
Participant ID to log in with.

NOTE: The 12-month follow-up survey exists in this same repository, on
the "followup2" branch.

Requirements
------------

* Ruby 1.9 or later with Bundler
* PostgeSQL 9.0 or later
* A webserver such as Apache or nginx

Installation
------------

# Clone the repository to the location you wish to run the survey from.
# Edit config/database.yml with the connection details for your database.
# Run "bundle install" to install all of the required Ruby libraries.
# Edit db/seeds.rb and change the details for the default admin user.
# Run "rake db:setup" to create the database tables and enter the
  data required to run the survey.
# Configure the Unicorn application server by editing config/unicorn.conf.rb
  - it is currently configured to listen on a socket file, but this can be
  changed to listen on a network port. It is recommended that you use
  a web server such as Apache or nginx in front of Unicorn, proxying
  connections to Unicorn for the survey, and serving the static files from
  'public' folder.
# Start the application: bundle exec unicorn -c config/unicorn.cong.rb

Heroku
------

This survey was run publicly using the Heroku application hosting service,
and so is pretty much ready to go. You just need to create your account,
and follow the instructions on uploading and existing application. The
application has already been configured, you will just need to run the
commands to start everything up. Note: you may recieve spurious warnings
regarding the existance of the 'vendor/plugins' folder - these warnings
are incorrect, and can be safely ignored.

It should handle a light load and a couple of hundred applicants without
problems on the free tier.
