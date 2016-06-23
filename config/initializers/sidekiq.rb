Sidekiq.configure_client do |config|
  config.redis = {
    url: ENV["REDIS_URL"],
    size: 10
  }
end

Sidekiq.configure_server do |config|
  config.redis = {
    url: ENV["REDIS_URL"],
    size: 50
  }
end
