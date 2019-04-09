 require 'rubygems'
 require 'bundler'
 require "bundler/setup"

 begin
   Bundler.setup(:default, :development)
 rescue Bundler::BundlerError => e
   $stderr.puts e.message
   $stderr.puts 'Run `bundle install` to install missing gems'
   exit e.status_code
 end

 task :environment do
   ENV['RACK_ENV'] ||= 'development'
   require File.expand_path('../config/environment', __FILE__)
 end

 desc "API Routes"
 task routes: :environment do
   API::Base.routes.each do |api|
     method = api.request_method.ljust(10)
     path   = api.path
     puts "     #{method} #{path}"
   end
 end

load "tasks/otr-activerecord.rake"

namespace :db do
  # Some db tasks require your app code to be loaded; they'll expect to find it here
  task :environment do
   ENV['RACK_ENV'] ||= 'development'
   require File.expand_path('../config/environment', __FILE__)
 end
end


 #Load tasks
 Dir.glob('lib/tasks/*.rake').each { |task| load task }

