# Generated via
#  `rails generate curation_concerns:work TuftsTei`
module CurationConcerns
  class TuftsTeiForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsTei
  end
end
