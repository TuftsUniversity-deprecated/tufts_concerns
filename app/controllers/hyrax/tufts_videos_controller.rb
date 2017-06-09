# Generated via
#  `rails generate curation_concerns:work TuftsVideo`

module Hyrax
  class TuftsVideosController < ApplicationController
    include Hyrax::WorksControllerBehavior
    include WithLimitedFileSets
    self.max_allowable_file_sets = 2
    self.curation_concern_type = TuftsVideo
  end
end
