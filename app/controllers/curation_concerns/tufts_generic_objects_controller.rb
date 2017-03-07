# Generated via
#  `rails generate curation_concerns:work TuftsGenericObject`

module CurationConcerns
  class TuftsGenericObjectsController < ApplicationController
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.curation_concern_type = TuftsGenericObject
  end
end
