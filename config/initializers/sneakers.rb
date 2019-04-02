require 'sneakers/metrics/logging_metrics'
Sneakers.configure  amqp: 'amqp://guest:guest@localhost:5672',
                    metrics: Sneakers::Metrics::LoggingMetrics.new,
                    handler: SneakersHandlers::ExponentialBackoffHandler,
                    max_retries: 50,
                    workers: 1

Sneakers.logger.level = Logger::INFO
