redis_config = $meta_config.parse('redis.yml')
redis_conn = "redis://#{redis_config['host']}:#{redis_config['port']}"
Sidekiq.configure_server do |config|
  config.redis = { url: redis_conn }

  config.error_handlers << Proc.new do |exception,context|
    job_context = context[:job].with_indifferent_access
    job = Object.const_get(job_context[:class])::JOB_NAME
    Sidekiq::Cron::Job.find(job).disable!
  end

  config.server_middleware do |chain|
    chain.add Recover
  end

  if File.exist?('config/cronjobs.yml') && Sidekiq.server?
    Sidekiq::Cron::Job.load_from_hash YAML.load_file('config/cronjobs.yml')
  end
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_conn }
end
