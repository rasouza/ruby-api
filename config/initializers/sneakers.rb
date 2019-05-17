require 'sneakers/metrics/logging_metrics'

rabbitmq_config = $meta_config.parse('rabbitmq.yml')
amqp_conn = "amqp://#{rabbitmq_config['username']}:#{rabbitmq_config['password']}@#{rabbitmq_config['host']}:#{rabbitmq_config['port']}"

Sneakers.configure  amqp: amqp_conn,
                    metrics: Sneakers::Metrics::LoggingMetrics.new,
                    handler: SneakersHandlers::ExponentialBackoffHandler,
                    max_retries: 50,
                    workers: 4,
                    daemonize: false

Sneakers.logger.level = Logger::INFO
