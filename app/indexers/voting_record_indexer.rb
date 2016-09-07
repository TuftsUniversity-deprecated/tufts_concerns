class VotingRecordIndexer < CurationConcerns::WorkIndexer
  def generate_solr_document
    super.tap do |solr_doc|

      solr_doc['voting_record_xml_tesi'] = "datastream content"

    end
  end
end