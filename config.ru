require File.expand_path('../config/environment', __FILE__)
use Rack::ConditionalGet
use Rack::ETag
use OTR::ActiveRecord::ConnectionManagement
use Raven::Rack
use Rack::ECG, at: '/health-check', checks: [:git_revision]

run Rack::URLMap.new('/' => API::Base, '/sidekiq' => Sidekiq::Web)

