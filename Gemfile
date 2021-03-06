# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby "2.7.1"

gem "rails", "~> 6.0.0"
gem "bootsnap", ">= 1.1.0", require: false
gem "high_voltage"
gem "jbuilder", "~> 2.5"
gem "pg"
gem "mini_racer"
gem "puma", "~> 5.1"
gem "rollbar"
gem "turbolinks", "~> 5"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "uglifier", ">= 1.3.0"
gem "webpacker"

gem "omniauth-auth0", "~> 2.2"
gem "omniauth-rails_csrf_protection", "~> 0.1"

group :development do
  gem "listen", ">= 3.0.5", "< 3.3"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "simplecov"
end

group :development do
  gem "better_errors"
  gem "rails_layout"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "brakeman"
  gem "bullet"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "pry"
  gem "rspec-rails"
  gem "shoulda-matchers", "~> 4.4", ">= 4.4.1"
  gem "standard"
end

group :test do
  gem "database_cleaner"
  gem "launchy"
end
