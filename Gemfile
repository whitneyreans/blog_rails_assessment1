source 'https://rubygems.org'



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bcrypt-ruby', '~> 3.1.5', require: "bcrypt"
gem 'twilio-ruby'

group :development, :test do
  gem 'rest-client'
  gem 'dotenv-rails'
  gem 'byebug'

  gem 'web-console', '~> 2.0'

  gem 'spring'

  group :test, :development do
  gem 'rspec-rails'
  gem 'capybara'

end

group :test do
  gem 'shoulda-matchers'
  gem 'phantomjs'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end
end
