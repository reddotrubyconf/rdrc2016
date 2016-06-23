web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -q default -e $RAILS_ENV -c 10
