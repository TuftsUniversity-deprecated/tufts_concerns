# Generated via
#  `rails generate curation_concerns:work TuftsImage`

module Hyrax
  class TuftsImagesController < ApplicationController
    include Hyrax::WorksControllerBehavior
    include WithLimitedFileSets
    include Downloadable
    self.curation_concern_type = TuftsImage
  end
end
