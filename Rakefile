#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)


require 'rake/dsl_definition'

#Added rakefile Amol. Remove line above this one.
class Rails::Application 
  include Rake::DSL 
end 

Fieux::Application.load_tasks
