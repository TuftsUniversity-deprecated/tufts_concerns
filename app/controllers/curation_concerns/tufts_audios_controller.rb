# Generated via
#  `rails generate curation_concerns:work TuftsAudio`

module CurationConcerns
  class TuftsAudiosController < ApplicationController
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.max_allowable_file_sets = 2
    self.curation_concern_type = TuftsAudio
  end
end
