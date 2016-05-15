source "https://rubygems.org"
ruby "2.3.0"

gem "rails", ">= 5.0.0.beta1", "< 5.1"

gem "puma"
gem "pg", "~> 0.18"

gem "coffee-rails", "~> 4.1.0"
gem "uglifier", ">= 1.3.0"
gem "jquery-rails"
gem "turbolinks"

gem "slim-rails"
gem 'sass-rails'
gem "bootstrap-sass"
gem 'font-awesome-sass'

gem "meta-tags"

group :production do
  gem "rails_12factor"
  gem "heroku-deflater"
end

group :development, :test do
  gem "byebug"
  gem "rspec-rails", git: "https://github.com/rspec/rspec-rails.git"
  gem "rspec-core", git: "https://github.com/rspec/rspec-core.git"
  gem "rspec-support", git: "https://github.com/rspec/rspec-support.git"
  gem "rspec-expectations", git: "https://github.com/rspec/rspec-expectations.git"
  gem "rspec-mocks", git: "https://github.com/rspec/rspec-mocks.git"
end

group :development do
  gem "web-console", "~> 3.0"
  gem "spring"
end

group :test do
  gem "capybara"
end
