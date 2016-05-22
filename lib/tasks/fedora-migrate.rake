desc "Migrate all my objects"
namespace :tufts do
  task migrate: :environment do
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {})
    puts results
  end

  desc "Delete all the content in Fedora 4"
  task clean4: :environment do
    ActiveFedora::Cleaner.clean!
  end
end