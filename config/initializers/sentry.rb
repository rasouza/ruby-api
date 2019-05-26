Raven.configure do |config|
  config.dsn = Global.sentry.dsn
  config.async = lambda { |event|
    Thread.new { Raven.send_event(event) }
  }
end
