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
  If the migration doesn't work, maybe you're getting an error that says this "SQLite3::SQLException: table "client_trainer_relations" already exists." Then try try dropping the database, recreating a new one, then migrating with the following line.

      rake db:drop db:create db:migrate

  You may need to recopy the schema.rb from this repository before you seed as this method does overwrite the file. If you want to make sure the migrate worked on all of the tables, then use the following line to check. All of the tables should be "up."
      
      rake db:migrate:status RAILS_ENV=development
