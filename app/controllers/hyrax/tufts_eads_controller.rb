# Generated via
#  `rails generate curation_concerns:work TuftsEad`

module Hyrax
  class TuftsEadsController < ApplicationController
    include Hyrax::WorksControllerBehavior

    helper :eads
    include WithLimitedFileSets
    self.curation_concern_type = TuftsEad
  end
end
