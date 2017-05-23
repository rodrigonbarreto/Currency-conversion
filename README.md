# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Things you may want to cover:


* Ruby version 2.3-slim
* to up the project with docker
   - docker-compose build
   - docker-compose run website rails db:create -> create database
   - docker-compose up

* docker-compose run website rails generate rspec:install (don't need to run this.)

* test
  - docker-compose run --rm website rspec spec/features/home_spec.rb
  - docker-compose run --rm website rspec spec/controllers/home_controller_spec.rb
  - docker-compose run --rm website rspec spec/lib/exchange_spec.rb

* before deploy
  - docker-compose run website bundle exec rake assets:precompile
