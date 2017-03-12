# Generated via
#  `rails generate curation_concerns:work TuftsImage`
module CurationConcerns
  class TuftsImageForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsImage
  end
end
