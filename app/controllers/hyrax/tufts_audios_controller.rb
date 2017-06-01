# Generated via
#  `rails generate curation_concerns:work TuftsAudio`

module Hyrax
  class TuftsAudiosController < ApplicationController
    include Hyrax::WorksControllerBehavior
    include WithLimitedFileSets
    self.max_allowable_file_sets = 2
    self.curation_concern_type = TuftsAudio
  end
end
