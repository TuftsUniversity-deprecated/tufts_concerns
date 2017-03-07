# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`
class TuftsBase < ActiveFedora::Base

  validates :title, presence: { message: 'Your work must have a title.' }
end
