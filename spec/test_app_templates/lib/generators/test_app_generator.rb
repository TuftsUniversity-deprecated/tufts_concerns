require 'rails/generators'

class TestAppGenerator < Rails::Generators::Base
  source_root File.dirname(__FILE__)
  # if you need to generate any additional configuration
  # into the test app, this generator will be run immediately
  # after setting up the application

  def fedora_config
    copy_file "fedora.yml", "config/fedora.yml", verbose: true
  end
  def run_spotlight_migrations
    rake "db:migrate RAILS_ENV=test"
  end
end
