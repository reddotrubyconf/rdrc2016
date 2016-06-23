source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '>= 5.0.0.beta1', '< 5.1'

gem 'puma'
gem 'pg', '~> 0.18'
gem 'redis', '~> 3.3.0'
gem 'sidekiq'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'slim-rails'
gem 'sass-rails'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'meta-tags'
gem 'local_time'
gem 'twemoji'
gem 'html-pipeline'
gem 'github-markdown'
gem 'sanitize'
gem 'rinku'

group :production do
  gem 'rails_12factor'
  gem 'heroku-deflater'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'rspec-instafail', require: false
  gem 'factory_girl_rails'
  gem 'database_rewinder'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  gem 'web-console', '~> 3.0'
  gem 'spring'
  gem 'pry-rails'
end
