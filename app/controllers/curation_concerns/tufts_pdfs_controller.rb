# Generated via
#  `rails generate curation_concerns:work TuftsPdf`

module CurationConcerns
  class TuftsPdfsController < ApplicationController
    include CurationConcerns::CurationConcernController
    self.curation_concern_type = TuftsPdf
  end
end
