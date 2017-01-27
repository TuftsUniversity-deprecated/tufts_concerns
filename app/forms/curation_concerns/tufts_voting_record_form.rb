# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`
module CurationConcerns
  class TuftsVotingRecordForm < CurationConcerns::Forms::WorkForm
    self.model_class = ::TuftsVotingRecord
    delegate :legacy_pid, to: :model
    delegate :alternative, to: :model
    delegate :abstract, to: :model
    delegate :date, to: :model
    delegate :personal_name, to: :model
    delegate :corporate_name, to: :model
    delegate :city, to: :model
    delegate :country, to: :model
    delegate :continent, to: :model
    delegate :hierarchical_geographic, to: :model
    delegate :complex_subject, to: :model
    delegate :genre, to: :model
    delegate :spatial, to: :model

    self.terms += [:legacy_pid, :alternative, :abstract, :date, :personal_name, :corporate_name, :city,
                   :country, :continent, :hierarchical_geographic, :complex_subject, :genre, :spatial]
  end
end
