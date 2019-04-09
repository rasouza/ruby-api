sentry_config = $meta_config.parse('sentry.yml')
Raven.configure do |config|
  config.dsn = sentry_config['dsn']
  config.async = lambda { |event|
    Thread.new { Raven.send_event(event) }
  }
end
