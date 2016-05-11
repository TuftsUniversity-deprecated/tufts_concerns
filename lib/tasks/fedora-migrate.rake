
desc "Migrate all my objects"
namespace :tufts do
  task migrate: :environment do
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {})
    puts results
  end
end