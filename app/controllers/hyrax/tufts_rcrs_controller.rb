# Generated via
#  `rails generate curation_concerns:work TuftsRcr`

module Hyrax
  class TuftsRcrsController < ApplicationController
    include Hyrax::WorksControllerBehavior
    include WithLimitedFileSets
    self.curation_concern_type = TuftsRcr
  end
end
