# Generated via
#  `rails generate curation_concerns:work TuftsGenericObject`

module Hyrax
  class TuftsGenericObjectsController < ApplicationController
    include Hyrax::WorksControllerBehavior
    include WithLimitedFileSets
    self.curation_concern_type = TuftsGenericObject
  end
end
