require 'tufts/vocab/tufts_terms'
module AdministrativeMetadata
  extend ActiveSupport::Concern
  included do
    property :date_submitted, predicate: ::RDF::Vocab::DC.dateSubmitted, multiple: false do |index|
      index.as :stored_searchable
    end

    property :date_issued, predicate: ::RDF::Vocab::DC.issued, multiple: false do |index|
      index.as :stored_searchable
    end

    property :date_available, predicate: ::RDF::Vocab::DC.available, multiple: false do |index|
      index.as :stored_searchable
    end

    property :date_accepted, predicate: ::RDF::Vocab::DC.dateAccepted, multiple: false do |index|
      index.as :stored_searchable
    end

    property :date_copyrighted, predicate: ::RDF::Vocab::DC.dateCopyrighted, multiple: false do |index|
      index.as :stored_searchable
    end

    property :audience, predicate: ::RDF::Vocab::DC.audience, multiple: false do |index|
      index.as :stored_searchable
    end

    property :resource_modified, predicate: ::RDF::Vocab::DC.modified, multiple: false do |index|
      index.as :stored_searchable
    end

    property :license, predicate: ::RDF::Vocab::DC.license, multiple: false do |index|
      index.as :stored_searchable
    end

    property :accrual_policy, predicate: ::RDF::Vocab::DC.accrualPolicy, multiple: false do |index|
      index.as :stored_searchable
    end

    property :steward, predicate: Tufts::Vocab::Terms.steward, multiple: false do |index|
      index.as :stored_searchable, :facetable
    end

    property :internal_note, predicate: Tufts::Vocab::Terms.internal_note, multiple: false do |index|
      index.as :stored_searchable
    end

    property :displays_in, predicate: Tufts::Vocab::Terms.displays_in, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :term_of_restriction, predicate: Tufts::Vocab::Terms.displays_in, multiple: false do |index|
      index.as :stored_searchable
    end

    # status kill

    property :end_date, predicate: ::RDF::Vocab::PREMIS.hasEndDate, multiple: false do |index|
      index.as :stored_searchable
    end

    #property :visibility, predicate: Tufts::Vocab::Terms.visibility, multiple: false do |index|
    #  index.as :stored_searchable
    #end

    # depositor
    # ::RDF::Vocab::TDRTerms.depositor
    # no/no

    property :batch_id, predicate: Tufts::Vocab::Terms.batch_id, multiple: false do |index|
      index.as :stored_searchable
    end
  end
  # Administrative Data Expansion Pack
  # Audience
  # Createdby
  # Creatordept
  # Date Accepted
  # Date Copyrighted
  # QR Note
  # Quality Review Status
  # Record Created By
  # Rejection Reason
  # Retention Period
  # Start Date

end