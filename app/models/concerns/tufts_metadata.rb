require 'tufts/vocab/tufts_terms'
module TuftsMetadata
  extend ActiveSupport::Concern

  included do
    property :legacy_pid, predicate: Tufts::Vocab::Terms.legacy_pid , multiple: false do |index|
      index.as :stored_searchable
    end

    property :alternative, predicate: ::RDF::Vocab::DC.alternative, multiple: true do |index|
      index.as :stored_searchable
    end

    property :abstract, predicate: ::RDF::Vocab::DC.abstract, multiple: false do |index|
      index.as :stored_searchable
    end

    property :date, predicate: ::RDF::Vocab::DC11.date, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :personal_name, predicate: ::RDF::Vocab::MADS.PersonalName, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :corporate_name, predicate: ::RDF::Vocab::MADS.CorporateName, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :city, predicate: ::RDF::Vocab::MADS.city, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :country, predicate: ::RDF::Vocab::MADS.country, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :continent, predicate: ::RDF::Vocab::MADS.Continent, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :hierarchical_geographic, predicate: ::RDF::Vocab::MADS.HierarchicalGeographic, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :complex_subject, predicate: ::RDF::Vocab::MADS.ComplexSubject, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :genre, predicate: ::RDF::Vocab::MADS.GenreForm, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end

    property :spatial, predicate: ::RDF::Vocab::DC.spatial, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end


  end

end
