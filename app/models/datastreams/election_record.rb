require 'om'

module Datastreams
  class ElectionRecord

    include OM::XML::Document
    include OM::XML::TerminologyBasedSolrizer
    set_terminology do |t|
      t.root(:path => "election_record",
             :xmlns => "http://dca.tufts.edu/aas",
             "xsi:schemaLocation" => "http://dca.tufts.edu/aas http://dca.tufts.edu/schema/aas/electionRecord.xsd",
             :schema => "http://ddex.net/xml/2010/ern-main/32/ern-main.xsd")
      # In the latest version of AF/BL date indexes differently then it used to, whereas
      # in the past 2011-01 would index as "2011" it now indexes the full string, or
      # it at least appears that way.
      t.date(:path => { :attribute => "date" })
      t.iteration(:path => { :attribute => "iteration" }, :index_as => [:stored_searchable])
      t.label_(:path => { :attribute => "label" }, :index_as => [:stored_searchable])
      t.election_id(:path => { :attribute => "election_id" }, :index_as => [:stored_searchable])
      t.handle(:path => { :attribute => "handle" }, :index_as => [:stored_searchable])
      t.election_record do
        t.election_type(:path => { :attribute => "type" }, :index_as => [:facetable, :stored_searchable])
      end
      t.office do
        t.name(:path => { :attribute => "name" })
        t.office_id(:path => { :attribute => "office_id" })
        t.scope_(:path => { :attribute => "scope" }, :index_as => [:stored_searchable])
        t.role do
          t.title(:path => { :attribute => "title" }, :index_as => [:facetable, :stored_searchable])
          t.scope_(:path => { :attribute => "scope" }, :index_as => [:stored_searchable])
          t.ballot do
            t.candidate do
              t.name(:path => { :attribute => "name" }, :index_as => [:facetable])
              t.candidate_id(:path => { :attribute => "name_id" }, :index_as => [:facetable])
              t.affiliation(:path => { :attribute => "affiliation" }, :index_as => [:facetable])
              t.affiliation_id(:path => { :attribute => "affiliation_id" }, :index_as => [:facetable])
            end
            t.elector do
              t.name(:path => { :attribute => "name" }, :index_as => [:facetable, :stored_searchable])
              t.elector_id(:path => { :attribute => "name_id" }, :index_as => [:facetable])
              t.affiliation(:path => { :attribute => "affiliation" }, :index_as => [:facetable])
              t.affiliation_id(:path => { :attribute => "affiliation_id" }, :index_as => [:facetable])
            end
          end
        end
      end
      t.state(:path => "admin_unit") do
        t.name(:path => { :attribute => "name" }, :index_as => [:facetable, :stored_searchable])
        t.county(:path => "sub_unit", :attributes => { :type => "County" }) do
          t.name(:path => { :attribute => "name" }, :index_as => [:facetable, :stored_searchable])
        end
      end
      t.citation(:path => "reference", :attributes => { :type => "citation" }, :index_as => [:stored_searchable])
      t.page_image(:path => "reference", :attributes => { :type => "page_image" }, :index_as => [:facetable, :stored_searchable]) do
        t.urn(:path => { :attribute => "urn" }, :index_as => [:facetable, :stored_searchable])
      end
      t.election_type(:proxy => [:election_record, :election_type], :index_as => [:facetable, :stored_searchable])
      t.candidate_name(:proxy => [:office, :role, :ballot, :candidate, :name], :index_as => [:facetable, :stored_searchable])
      t.candidate_id(:proxy => [:office, :role, :ballot, :candidate, :candidate_id], :index_as => [:facetable, :stored_searchable])
      t.candidate_affiliation(:proxy => [:office, :role, :ballot, :candidate, :affiliation])
      t.elector_name(:proxy => [:office, :role, :ballot, :elector, :name])
      t.elector_id(:proxy => [:office, :role, :ballot, :elector, :elector_id])
      t.elector_affiliation(:proxy => [:office, :role, :ballot, :elector, :affiliation])
      t.jurisdiction(:proxy => [:office, :scope], :index_as => [:facetable])
    end
    def self.xml_template
      nil
    end

    def to_solr

      solr_doc =  self.class.solrize(self)


      solr_doc["format_tesim"] = "Election Record"
      solr_doc["format_ssim"] = "Election Record"
      solr_doc["date_isi"] = date.to_a.map(&:to_i).first
      solr_doc["date_sim"] = date.first[0..3] unless date.first.nil?
      solr_doc["election_id_ssim"] = election_id.to_a
      solr_doc["handle_ssi"] = handle.to_a
      solr_doc["candidate_id_ssim"] = candidate_id.to_a
      solr_doc["page_image_urn_ssim"] = page_image.urn
      solr_doc["jurisdiction_tesim"] = jurisdiction.to_a
      solr_doc["jurisdiction_ssim"] = jurisdiction.to_a

      unless office.office_id.nil?
        office_id = Array(office.office_id).first
        solr_doc["office_id_ssim"] = [office_id]
        solr_doc["office_name_sim"] = solr_doc["office_name_tesim"] = Array(office_name(office_id))
      end

      solr_doc
    end

    def office_name(id)
      office = Office.find(id)
      office.blank? ? nil : office.name
    end
  end
end
