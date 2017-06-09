# Generated via
#  `rails generate curation_concerns:work TuftsTei`

module Hyrax
  class TuftsTeisController < ApplicationController
    include Hyrax::WorksControllerBehavior
    include WithLimitedFileSets
    self.curation_concern_type = TuftsTei
  end
end
