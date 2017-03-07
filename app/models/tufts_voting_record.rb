# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`
class TuftsVotingRecord < ActiveFedora::Base
  include BaseModel
  include VotingRecordIndexing

  # Change this to restrict which works can be added as a child.
  self.valid_child_concerns = []
  self.human_readable_type = 'Voting Record'
end
