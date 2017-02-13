# Generated via
#  `rails generate curation_concerns:work TuftsTei`

module CurationConcerns
  class TuftsTeisController < ApplicationController
    include CurationConcerns::CurationConcernController
    self.curation_concern_type = TuftsTei
  end
end
