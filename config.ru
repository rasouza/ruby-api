require File.expand_path('../config/environment', __FILE__)
use Rack::ConditionalGet
use Rack::ETag
use OTR::ActiveRecord::ConnectionManagement
use Raven::Rack

require 'sidekiq/web'
require 'sidekiq/cron/web'

run Rack::URLMap.new('/' => API::Base, '/sidekiq' => Sidekiq::Web)

