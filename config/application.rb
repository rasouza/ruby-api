$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'boot'
require 'erb'

Bundler.require :default, ENV['RACK_ENV']

require_rel '../app'
require_rel '../api'
require_rel '../lib'
require_rel 'initializers'

db_config = YAML.load(ERB.new(File.read("config/database.yml")).result)[ENV['RACK_ENV']]
ActiveRecord::Base.default_timezone = :utc
ActiveRecord::Base.establish_connection(db_config)

SemanticLogger.default_level = :trace
SemanticLogger.add_appender(io: $stdout, formatter: :color)
