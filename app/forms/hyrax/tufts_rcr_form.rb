# Generated via
#  `rails generate curation_concerns:work TuftsRcr`
module Hyrax
  class TuftsRcrForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsRcr
  end
end
