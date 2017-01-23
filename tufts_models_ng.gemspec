$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tufts_models_ng/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tufts_models_ng"
  s.version     = TuftsModelsNg::VERSION
  s.authors     = ["Mike Korcynski"]
  s.email       = ["Mike.Korcynski@tufts.edu"]
  s.homepage    = "http://github.com/TuftsUniversity"
  s.summary     = "tufts_models on fedora 4"
  s.description = "tufts_models on fedora 4"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency 'sass-rails', '~> 5.0'
  s.add_dependency 'uglifier', '>= 1.3.0'
  s.add_dependency 'coffee-rails', '~> 4.1.0'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'turbolinks'
  s.add_dependency 'jbuilder', '~> 2.0'
  s.add_dependency 'curation_concerns', '1.3.3'
#  s.add_dependency 'user_impersonate2', :require => 'user_impersonate'
#  s.add_dependency 'fedora-migrate', :git =>	'https://github.com/mkorcy/fedora-migrate.git'
  s.add_dependency 'rsolr', '~> 1.0'
  s.add_dependency 'devise'
  s.add_dependency 'devise-guests', '~> 0.3'
  s.add_dependency 'devise_ldap_authenticatable'
  s.add_dependency 'sqlite3'
  s.add_development_dependency "engine_cart"
#  s.add_development_dependency "sqlite3"
#  s.add_development_dependency "sqlite3" 'web-console', '~> 2.0'
  s.add_dependency 'byebug'
  s.add_development_dependency 'rubocop', '~> 0.47.0'
  s.add_development_dependency 'rubocop-rspec', '~> 1.10.0'
  s.add_development_dependency 'rspec-rails', '~> 3.1'

#  s.add_development_dependency "sqlite3" 'spring'
#  s.add_development_dependency "sqlite3" 'rubocop', require: false
#  s.add_development_dependency "sqlite3" 'rubocop-rspec', require: false
  s.add_development_dependency 'solr_wrapper'
  s.add_development_dependency 'fcrepo_wrapper'
  s.add_development_dependency 'coveralls'
#  s.add_development_dependency "sqlite3" 'rspec-rails'

end
