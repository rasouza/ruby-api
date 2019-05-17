ENV['RACK_ENV'] ||= 'development'
ENV['TZ'] = 'UTC'

require File.expand_path('../application', __FILE__)
