# Generated via
#  `rails generate curation_concerns:work TuftsEad`

module CurationConcerns
  class TuftsEadsController < ApplicationController
    include CurationConcerns::CurationConcernController
    self.curation_concern_type = TuftsEad
  end
end
