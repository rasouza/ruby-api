require 'sneakers/metrics/logging_metrics'

amqp_conn = "amqp://#{Global.rabbitmq.username}:#{Global.rabbitmq.password}@#{Global.rabbitmq.host}:#{Global.rabbitmq.port}"

Sneakers.configure  amqp: amqp_conn,
                    metrics: Sneakers::Metrics::LoggingMetrics.new,
                    handler: SneakersHandlers::ExponentialBackoffHandler,
                    max_retries: 50,
                    workers: 4,
                    daemonize: false

Sneakers.logger.level = Logger::INFO
