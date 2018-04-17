# PostEnvy

PostEnvy is a Railsa app that allows users to post various content and comment on posts.

Deployed at: https://postenvy.herokuapp.com

## Features

- Users can sign up for an account and veiw their activity (posts, comments, and favorites).
- Users can comment on posts with their thoughts, opinions, and insights.
- Users can mark posts as favorites to get notified of new comments or changes to the post.
- Admins can alter or delete any post.

## Built With

- HTML5
- CSS3
- Bootstrap
- Ruby
- Rails 5.1.4
- Bcrypt
- Font Awesome
- Rspec
- Figaro
- Factory Bot
- Gravtar

## Installation

If you want to install PostEnvy locally, you need to make sure you have Ruby installed on your machine, and then fork and clone this repository. After you have cloned the repository locally, use bundler to install dependencies.

```bash
#if needed
gem install bundle

bundle install
```
After that you will need to set up the databases.
```bash
rails db:setup
```
Start up the local development server adn vistit the default port at `http://localhost:3000'.
```bash
rails s
```

## Author
Matt Musser

