# Generated via
#  `rails generate curation_concerns:work TuftsEad`

module CurationConcerns
  class TuftsEadsController < ApplicationController
    helper :eads
    include CurationConcerns::CurationConcernController
    include WithLimitedFileSets
    self.curation_concern_type = TuftsEad

    before_action :load_fedora_document

    def load_fedora_document
      @document_fedora = ActiveFedora::Base.find(params[:id])

      return unless @document_fedora.class.instance_of?(TuftsEad.class)

      @document_ead = Datastreams::Ead.from_xml(@document_fedora.file_sets.first.original_file.content)
      @document_ead.ng_xml.remove_namespaces! unless @document_ead.nil?
    end
  end
end
