# Generated via
#  `rails generate curation_concerns:work TuftsImage`

module CurationConcerns
  class TuftsImagesController < ApplicationController
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.curation_concern_type = TuftsImage

  end
end
