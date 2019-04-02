# source 'https://maven.internal.sumup.com/content/repositories/gems/'
source 'https://rubygems.org'


ruby '2.6.2'

gem 'rack'
gem 'grape'
gem 'grape-entity'
gem 'pg'
gem 'semantic_logger', '~> 4.5'
gem 'sneakers', '~> 2.11'
gem 'sneakers_handlers'
gem 'activerecord', require: 'active_record'
gem 'require_all', '~> 1.3', '>= 1.3.3'
gem 'sidekiq', '~> 5.2', '>= 5.2.5'
gem 'sidekiq-cron', '~> 1.1'
gem 'faraday', '~> 0.15.4'

group :development, :test do
  gem 'pry-byebug'
end

group :development do
  gem 'rake'
  gem 'thin'
  gem 'guard', require: false
  gem 'guard-rack', require: false
  gem 'guard-bundler', require: false
end

group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'factory_girl'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'simplecov', require: false
end

