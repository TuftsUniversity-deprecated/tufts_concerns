require 'curation_concerns'
require 'devise'
require 'devise_ldap_authenticatable'
module TuftsModelsNg
  class Engine < ::Rails::Engine
    isolate_namespace TuftsModelsNg

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
