# Generated via
#  `rails generate curation_concerns:work TuftsPdf`

module Hyrax
  class TuftsPdfsController < ApplicationController
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.max_allowable_file_sets = 2
    self.curation_concern_type = TuftsPdf
  end
end
