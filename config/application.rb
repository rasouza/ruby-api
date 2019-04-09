$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'bundler/setup'

Bundler.require :default, ENV['RACK_ENV']

$meta_config = MetaConfig.new(
  app_root: './',
  verbose: false
)

require_rel '../app'
require_rel '../api'
require_rel '../lib'
require_rel 'initializers'


