# Generated via
#  `rails generate curation_concerns:work TuftsGenericObject`
module Hyrax
  class TuftsGenericObjectForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsGenericObject
  end
end
