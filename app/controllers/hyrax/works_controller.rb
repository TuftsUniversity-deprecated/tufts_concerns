# Generated via
#  `rails generate curation_concerns:work Work`

module Hyrax
  class WorksController < ApplicationController
    include CurationConcerns::CurationConcernController
    self.curation_concern_type = Work
  end
end
