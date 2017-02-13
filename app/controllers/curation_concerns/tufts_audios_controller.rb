# Generated via
#  `rails generate curation_concerns:work TuftsAudio`

module CurationConcerns
  class TuftsAudiosController < ApplicationController
    include CurationConcerns::CurationConcernController
    self.curation_concern_type = TuftsAudio
  end
end
