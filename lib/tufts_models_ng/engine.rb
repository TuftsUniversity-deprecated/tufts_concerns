require 'hyrax'
require 'devise'
require 'devise_ldap_authenticatable'
require 'hydra-role-management'
require 'blacklight'
require 'rsolr'
require 'resque'
require 'resque-status'
require 'om'

module TuftsModelsNg
  class Engine < ::Rails::Engine
    # isolate_namespace TuftsModelsNg
    # Add a load path for this specific Engine
    config.autoload_paths << File.expand_path("../lib/tufts/vocab", __FILE__)

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
