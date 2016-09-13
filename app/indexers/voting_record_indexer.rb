class VotingRecordIndexer < CurationConcerns::WorkIndexer
  def generate_solr_document
    super.tap do |solr_doc|

      l = Logger.new(STDOUT)
      l.info(object.file_sets[0].files.class)
      l.info(object.file_sets[0].files.empty?)
      l.info(object.file_sets[0].files)
      byebug

      #:f3_pid

      solr_doc['voting_record_xml_tesi'] = "datastream blah content"

    end
  end
end
