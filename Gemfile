source 'https://rubygems.org'

ruby '2.2.0'

gem 'puma'
gem 'rails',                        '4.2.3'
gem 'dotenv-rails'
gem 'rails-i18n'

gem 'uglifier',                     '>= 1.3.0'
gem 'sass-rails',                   '~> 5.0'
gem 'slim-rails'
gem 'turbolinks'
gem 'coffee-rails',                 '~> 4.1.0'
gem 'jquery-rails'
gem 'font-awesome-sass',            '~> 4.3.0'
gem 'jquery-turbolinks'
gem 'nav_lynx'
gem 'dynamic_form'
gem "paperclip",                    '~> 4.3'

gem 'mailchimp-api',                require: 'mailchimp'

# Cookies Problem
# https://github.com/rails/activerecord-session_store
# http://stackoverflow.com/a/18581914
gem 'activerecord-session_store'

# Markdown
gem 'redcarpet'

# Bourbon Family
gem 'bourbon'
gem 'neat'
gem 'refills'
gem 'bitters'

gem 'unicorn'

# Authentication
gem 'devise'
gem 'devise-i18n'

gem 'mysql2'
gem 'seed_dump'

gem 'whenever'

# Host Configuration
gem 'rack-canonical-host'

group :development, :test do
  gem 'byebug'
  gem 'spring'
  gem 'sqlite3'
  gem 'rubocop'
  gem 'pry-rails'
  gem 'web-console',                '~> 2.0'
  gem 'quiet_assets'
  gem 'sql_queries_count'

  gem 'simplecov'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'codeclimate-test-reporter'
  gem 'ffaker'
  gem 'capybara'

  gem 'racksh'

  gem 'mina'
  gem 'mina-multistage',  require: false
  gem 'mina-unicorn',     require: false
  gem 'mina-hooks',       require: false
  gem 'mina-nginx',       require: false
end

group :production, :staging do
  gem 'pg'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end