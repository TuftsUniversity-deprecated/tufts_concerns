# Generated via
#  `rails generate curation_concerns:work TuftsRcr`

module Hyrax
  class TuftsRcrsController < ApplicationController
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.curation_concern_type = TuftsRcr
  end
end
