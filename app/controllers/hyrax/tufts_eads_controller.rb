# Generated via
#  `rails generate curation_concerns:work TuftsEad`

module Hyrax
  class TuftsEadsController < ApplicationController
    helper :eads
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.curation_concern_type = TuftsEad
  end
end
