# Generated via
#  `rails generate curation_concerns:work TuftsGenericObject`
class TuftsGenericObject < ActiveFedora::Base
  include BaseModel
  include CommonIndexing
  # Change this to restrict which works can be added as a child.
  self.valid_child_concerns = []
  self.human_readable_type = 'Generic Object'
  validates :title, presence: { message: 'Your work must have a title.' }
end
