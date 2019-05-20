# Grape Bootstrap

## Introduction

Bootstrap Grape application for REST APIs. Refer to [Wiki](https://github.com/rasouza/API_boilerplate/wiki) to know more about how features are implemented

## Features

- Live Reload Development ([Guard](https://github.com/guard/guard))
- RabbitMQ ([Sneakers](http://sneakers.io/))
- Cron Jobs ([Sidekiq](https://sidekiq.org/))
- Audit Logs ([PaperTrail](https://github.com/paper-trail-gem/paper_trail))
- [Codecov.io](https://codecov.io/)
- [Sentry.io](https://sentry.io/)

## Dependencies

- Ruby 2.6.2
- PostgreSQL
- Redis 5

## Installation

- Clone poject

- Run bundler:

 ```shell
 $ bundle install
 ```

- Create database and run migrations:

 ```shell
 $ bundle exec rake db:create db:migrate
 ```

- Run application:

 ```shell
 $ rackup -p 3000
 ```

- For development:
```shell
$ bundle exec guard
```

## Docker

To run application on docker:

- Install Docker and Docker-Compose
- Clone the project
- Run these commands on project root:

```shell
$ docker-compose build
$ docker-compose up

# Open another terminal and run:
$ docker-compose run web bundle exec rake db:create db:migrate
```

## Console

To use console, run the following command:

```shell
$ bin/console
```

## Background Jobs

To run Cron Jobs:
```shell
$ bin/sidekiq
```

To run RabbitMQ Workers:
```shell
$ bin/sneakers
```

## Tests

To execute tests, run the following command:

```shell
$ bundle exec rspec
```

## Routes

To show the application routes, run the following command:

```shell
$ bundle exec rake routes
```

## License

The software is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
