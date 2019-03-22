Sidekiq.configure_server do |config|
  # config.redis = { url: 'redis://redis:6379' }

  if File.exist?('config/sidekiq.yml') && Sidekiq.server?
    Sidekiq::Cron::Job.load_from_hash YAML.load_file('config/sidekiq.yml')
  end
end

Sidekiq.configure_client do |config|
  # config.redis = { url: 'redis://redis:6379' }
end
