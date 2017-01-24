# encoding: UTF-8
require 'rubygems'
require 'rails'
require 'engine_cart/rake_task'
require 'rubocop/rake_task'
require 'rspec/core/rake_task'
require 'solr_wrapper'
require 'fcrepo_wrapper'

desc 'Run style checker'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = true
end

RSpec::Core::RakeTask.new(:spec)

desc 'Spin up test servers and run specs'
task :spec_with_app_load do
  Rake::Task['spec'].invoke
end

desc 'Generate the engine_cart and spin up test servers and run specs'
task ci: ['engine_cart:generate'] do
  ENV['environment'] = "test"
  puts 'running continuous integration'
  Rake::Task['spec_with_app_load'].invoke
end
task :default => [:rubocop, :ci]
