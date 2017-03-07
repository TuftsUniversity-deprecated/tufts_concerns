# Generated via
#  `rails generate curation_concerns:work TuftsAudio`
class TuftsAudio < ActiveFedora::Base
  include BaseModel

  # Change this to restrict which works can be added as a child.
  self.valid_child_concerns = []
  self.human_readable_type = 'Audio'
  validates :title, presence: { message: 'Your work must have a title.' }
end
