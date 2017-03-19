# Generated via
#  `rails generate curation_concerns:work Work`
class Work < ActiveFedora::Base
  include BaseModel

  validates :title, presence: { message: 'Your work must have a title.' }
end
