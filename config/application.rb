$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'bundler/setup'

Bundler.require :default, ENV['RACK_ENV']

Global.configure do |config|
  config.environment = ENV['RACK_ENV']
  config.config_directory = File.dirname(__FILE__)
end

require_rel '../app'
require_rel '../api'
require_rel 'initializers'
