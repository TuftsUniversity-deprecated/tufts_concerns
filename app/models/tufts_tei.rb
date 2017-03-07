# Generated via
#  `rails generate curation_concerns:work TuftsTei`
class TuftsTei < ActiveFedora::Base
  include BaseModel

  # Change this to restrict which works can be added as a child.
  self.valid_child_concerns = []
  self.human_readable_type = "TEI"
  validates :title, presence: { message: 'Your work must have a title.' }
end
