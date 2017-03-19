require 'tufts/vocab/tufts_terms'
module CollectionMetadata
  extend ActiveSupport::Concern
  included do
    property :displays_in, predicate: Tufts::Vocab::Terms.displays_in, multiple: true do |index|
      index.as :stored_searchable, :facetable
    end
  end
end