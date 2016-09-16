require "#{Rails.root}/app/models/datastreams/election_record.rb"

class VotingRecordIndexer < CurationConcerns::WorkIndexer
  def generate_solr_document
    super.tap do |solr_doc|

      files = object.file_sets[0].files
      files.each do |f|
        if(f.mime_type == "text/xml")
          doc = Datastreams::ElectionRecord.from_xml(f.content)

          # Merge the datastream's to_solr with this one.
          solr_doc.merge!(doc.to_solr)

          solr_doc["party_affiliation_sim"] = get_affs(doc.office.role.ballot)
          solr_doc["party_affiliation_id_ssim"] = get_aff_ids(doc.office.role.ballot)
          solr_doc["title_tesi"] = solr_doc["title_ssi"] = solr_doc["title_tesim"].first
          solr_doc["voting_record_xml_tesi"] = f.content
          solr_doc["all_text_timv"] = get_all_text(solr_doc)
        end #End if f.mime_type
      end #End files.each
    end #End super.tap
  end #End def generate_solr_document

  ##
  # Checks if something has an empty method and, if so, checks that method.
  #
  # @param thing
  #   The thing to check.
  def safe_empty(thing)
    thing.class.method_defined?(:empty?) && thing.empty?
  end

  ##
  # Concats the candidate and elector affiliations.
  #
  # @param {obj} ballot
  #   The ballot with the affiliations.
  def get_affs(ballot)
    ballot.candidate.affiliation.to_a + ballot.elector.affiliation.to_a - ['null']
  end

  ##
  # Concats the candidate and elector affiliation ids.
  #
  # @param {obj} ballot
  #   The ballot with the affiliations.
  def get_aff_ids(ballot)
    ids = ballot.candidate.affiliation_id.to_a + ballot.elector.affiliation_id.to_a
    ids.delete_if { |party_id| Party.find(party_id).nil? }
    ids - ['null']
  end

  ##
  # Gets all the text and makes it one, like Voltron.
  #
  # @param {Hash} doc
  #   The solr document.
  def get_all_text(doc)
    all_text_values = []
    undesirables = ['voting_record_xml_tesi','object_profile_ssm']

    doc.each do |key,value|
      unless(undesirables.include?(key))
        all_text_values << value
      end
    end

    all_text_values.flatten.uniq - ["null", ""]
  end

end #End class VotingRecordIndexer

