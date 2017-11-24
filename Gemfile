source 'https://rubygems.org'
ruby "2.4.2"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'



# #1
group :production do
  # Use pg as the production database for Active Record
  gem 'pg'
  gem 'rails_12factor'
end

# #2
group :development do
  # Use sqlite3 as the development database for Active Record
  gem 'sqlite3'
end

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'thor', '0.19.1'

group :development do
  gem 'listen', '~> 3.0.5'
end

group :development, :test do
  gem 'rspec-rails', '3.6.1'
  gem 'rails-controller-testing'
  gem 'shoulda'
end

gem 'bootstrap', '~> 4.0.0.beta'

# Rspec formatter
gem 'fuubar'

# Used for encrypting passwords
gem 'bcrypt', '~> 3.1.7'

# Font Awesome
gem 'font-awesome-rails'