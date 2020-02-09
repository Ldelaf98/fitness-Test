# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


DataBase Help:
  Instead of migrating everything from scratch (which can create a brand new schema if done wrong), try the following line to load the current schema into the database.

      rake db:schema:load

  If you want to make sure the migrate worked on all of the files, then use the following line to check. All of the tables should be "up."
      
      rake db:migrate:status RAILS_ENV=development
