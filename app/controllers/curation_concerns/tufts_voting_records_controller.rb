# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`

module CurationConcerns
  class TuftsVotingRecordsController < ApplicationController
    include CurationConcerns::CurationConcernController
    self.curation_concern_type = TuftsVotingRecord
  end
end
