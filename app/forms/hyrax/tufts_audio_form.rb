# Generated via
#  `rails generate curation_concerns:work TuftsAudio`
module Hyrax
  class TuftsAudioForm < CurationConcerns::Forms::WorkForm
    include CommonFormProperties
    self.model_class = ::TuftsAudio
  end
end
