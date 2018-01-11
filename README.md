# PostEnvy

A Reddit replica to teach the fundamentals of web development and Rails.

## How

### Ruby on Rails

PostEnvy is built with Rails 4.2.5 and PostgresSQL. The application allows users to post content and comment on posts. Each post can be listed as a "Favorite" and voted up or down. Each user has the ability to view their profile and see their posts and comments.

### Test Driven Development (TDD)

I built this application with the principles of TDD; red, green, refactor. Create the tests (red), create the code to make the tests work (green), then refactor as needed. All testing is done with RSpec.

## Tech

HTML5, CSS3, Bootstrap, Rails 5.1.4, PostgresSQL, RSpec, Gravtar, Heroku

## Run Locally

Prerequisites: Ruby on Rails 5.1.4

* Fork and Clone Repository
* In the root run
```
bundle install --without production
```
* Set-up the database:
```
rake db:create
rake db:migrate
rake db:seed
```
* Serve the app
```
rails s
```
* View the site at localhost:3000

## Who

Created and maintained by [Matt Musser](http://www.github.com/mattMusser)


