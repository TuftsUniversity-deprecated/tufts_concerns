# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`

class CurationConcerns::TuftsVotingRecordsController < ApplicationController
  include CurationConcerns::CurationConcernController
  self.curation_concern_type = TuftsVotingRecord
end
