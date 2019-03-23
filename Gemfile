source 'https://rubygems.org'
ruby '2.6.2'

gem 'rack'
gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'
gem 'pg'
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
end

group :test do
  gem 'rspec'
  gem 'rack-test'
  gem 'factory_girl'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'simplecov', require: false
end

