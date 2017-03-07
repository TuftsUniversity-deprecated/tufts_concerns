# Generated via
#  `rails generate curation_concerns:work TuftsVideo`

module CurationConcerns
  class TuftsVideosController < ApplicationController
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.max_allowable_file_sets = 2
    self.curation_concern_type = TuftsVideo
  end
end
