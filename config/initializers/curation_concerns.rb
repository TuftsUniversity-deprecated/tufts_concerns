mod = defined?(CurationConcerns) ? CurationConcerns : Hyrax

mod.configure do |config|
  # Injected via `rails g curation_concerns:work TuftsVideo`
  config.register_curation_concern :tufts_video
  # Injected via `rails g curation_concerns:work TuftsTei`
  config.register_curation_concern :tufts_tei
  # Injected via `rails g curation_concerns:work TuftsRcr`
  config.register_curation_concern :tufts_rcr
  # Injected via `rails g curation_concerns:work TuftsPdf`
  config.register_curation_concern :tufts_pdf
  # Injected via `rails g curation_concerns:work TuftsImage`
  config.register_curation_concern :tufts_image
  # Injected via `rails g curation_concerns:work TuftsEad`
  config.register_curation_concern :tufts_ead
  # Injected via `rails g curation_concerns:work TuftsAudio`
  config.register_curation_concern :tufts_audio
  # Injected via `rails g curation_concerns:work TuftsGenericObject`
  config.register_curation_concern :tufts_generic_object
  # Injected via `rails g curation_concerns:work TuftsVotingRecord`
  config.register_curation_concern :tufts_voting_record
  config.register_curation_concern :work
end

Date::DATE_FORMATS[:standard] = '%m/%d/%Y'
