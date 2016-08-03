desc "Migrate all my objects"
namespace :tufts do
  task migrate: :environment do
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {})
    puts results
  end

  desc "Migrate election records"
  task migrate_elections: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'Elections'})
    puts results
  end

  desc "Delete all the content in Fedora 4"
  task clean4: :environment do
    ActiveFedora::Cleaner.clean!
  end
end