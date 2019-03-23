Sidekiq.configure_server do |config|
  # config.redis = { url: 'redis://redis:6379' }

  config.error_handlers << Proc.new do |exception,context|
    job_context = context[:job].with_indifferent_access
    job = Object.const_get(job_context[:class])::JOB_NAME
    Sidekiq::Cron::Job.find(job).disable!
  end

  config.server_middleware do |chain|
    chain.add Recover
  end

  if File.exist?('config/sidekiq.yml') && Sidekiq.server?
    Sidekiq::Cron::Job.load_from_hash YAML.load_file('config/sidekiq.yml')
  end
end

Sidekiq.configure_client do |config|
  # config.redis = { url: 'redis://redis:6379' }
end
