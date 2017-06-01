# Generated via
#  `rails generate curation_concerns:work Work`
module Hyrax
  class WorkForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::Work
  end
end
