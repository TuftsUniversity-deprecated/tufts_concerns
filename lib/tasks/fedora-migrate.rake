desc "Migrate all my objects"
namespace :tufts do
  task migrate: :environment do
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {})
    puts results
  end

  desc "Migrate election records"
  task migrate_elections: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'elections'})
    puts results
  end

  desc "Migrate EADs"
  task migrate_eads: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'eads'})
    puts results
  end

  desc "Migrate Images"
  task migrate_images: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'images'})
    puts results
  end

  desc "Migrate TEIs"
  task migrate_teis: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'teis'})
    puts results
  end

  desc "Migrate PDF"
  task migrate_pdfs: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'pdfs'})
    puts results
  end

  desc "Migrate Audio"
  task migrate_audio: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'audio'})
    puts results
  end

  desc "Migrate Video"
  task migrate_video: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'video'})
    puts results
  end

  desc "Migrate RCR"
  task migrate_rcrs: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'rcrs'})
    puts results
  end

  desc "Migrate Generics -- only works on campus"
  task migrate_generics: :environment do
    # Specifies FedoraMigrate should use the elections target constructor
    results = FedoraMigrate.migrate_repository(namespace: "tufts", options: {target_constructor: 'generics'})
    puts results
  end


  desc "Delete all the content in Fedora 4"
  task clean4: :environment do
    ActiveFedora::Cleaner.clean!
  end
end