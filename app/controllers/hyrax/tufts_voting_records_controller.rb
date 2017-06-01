# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`

module Hyrax
  class TuftsVotingRecordsController < ApplicationController
    helper :elections
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.curation_concern_type = TuftsVotingRecord
  end
end
