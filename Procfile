web: rackup -p 3000
worker: bundle exec sidekiq -r ./config/environment.rb
docker: docker-compose up -d redis db server rabbitmq
migration: docker-compose run web rake db:create db:migrate
develop: bundle exec guard
