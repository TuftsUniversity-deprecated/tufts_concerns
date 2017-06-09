# Generated via
#  `rails generate curation_concerns:work TuftsEad`
module Hyrax
  class TuftsEadForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsEad
  end
end
