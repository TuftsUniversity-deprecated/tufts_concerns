# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`
module Hyrax
  class TuftsVotingRecordForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsVotingRecord
  end
end
