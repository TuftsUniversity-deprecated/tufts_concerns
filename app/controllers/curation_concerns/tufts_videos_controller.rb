# Generated via
#  `rails generate curation_concerns:work TuftsVideo`

module CurationConcerns
  class TuftsVideosController < ApplicationController
    include CurationConcerns::CurationConcernController
    self.curation_concern_type = TuftsVideo
  end
end
