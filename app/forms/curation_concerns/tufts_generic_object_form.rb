# Generated via
#  `rails generate curation_concerns:work TuftsGenericObject`
module CurationConcerns
  class TuftsGenericObjectForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsGenericObject
  end
end
