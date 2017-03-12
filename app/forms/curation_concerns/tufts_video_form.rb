# Generated via
#  `rails generate curation_concerns:work TuftsVideo`
module CurationConcerns
  class TuftsVideoForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsVideo
  end
end
