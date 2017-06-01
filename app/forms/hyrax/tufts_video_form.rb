# Generated via
#  `rails generate curation_concerns:work TuftsVideo`
module Hyrax
  class TuftsVideoForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsVideo
  end
end
