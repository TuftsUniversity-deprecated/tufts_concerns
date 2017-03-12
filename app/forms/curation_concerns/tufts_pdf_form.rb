# Generated via
#  `rails generate curation_concerns:work TuftsPdf`
module CurationConcerns
  class TuftsPdfForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsPdf
  end
end
