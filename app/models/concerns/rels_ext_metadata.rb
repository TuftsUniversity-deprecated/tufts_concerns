require 'tufts/vocab/tufts_terms'
require 'rdf/fcrepo3'

module RelsExtMetadata
  extend ActiveSupport::Concern

  included do
    property :relsext_fedoraRelationship, predicate: RDF::FCREPO3::RELSEXT.fedoraRelationship, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasAnnotation, predicate: RDF::FCREPO3::RELSEXT.hasAnnotation, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasCollectionMember, predicate: RDF::FCREPO3::RELSEXT.hasCollectionMember, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasConstituent, predicate: RDF::FCREPO3::RELSEXT.hasConstituent, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasDependent, predicate: RDF::FCREPO3::RELSEXT.hasDependent, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasDerivation, predicate: RDF::FCREPO3::RELSEXT.hasDerivation, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasDescription, predicate: RDF::FCREPO3::RELSEXT.hasDescription, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasEquivalent, predicate: RDF::FCREPO3::RELSEXT.hasEquivalent, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasMember, predicate: RDF::FCREPO3::RELSEXT.hasMember, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasMetadata, predicate: RDF::FCREPO3::RELSEXT.hasMetadata, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasPart, predicate: RDF::FCREPO3::RELSEXT.hasPart, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_hasSubset, predicate: RDF::FCREPO3::RELSEXT.hasSubset, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isAnnotationOf, predicate: RDF::FCREPO3::RELSEXT.isAnnotationOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isConstituentOf, predicate: RDF::FCREPO3::RELSEXT.isConstituentOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isDependentOf, predicate: RDF::FCREPO3::RELSEXT.isDependentOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isDerivationOf, predicate: RDF::FCREPO3::RELSEXT.isDerivationOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isDescriptionOf, predicate: RDF::FCREPO3::RELSEXT.isDescriptionOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isMemberOf, predicate: RDF::FCREPO3::RELSEXT.isMemberOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isMemberOfCollection, predicate: RDF::FCREPO3::RELSEXT.isMemberOfCollection, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isMetadataFor, predicate: RDF::FCREPO3::RELSEXT.isMetadataFor, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isPartOf, predicate: RDF::FCREPO3::RELSEXT.isPartOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_isSubsetOf, predicate: RDF::FCREPO3::RELSEXT.isSubsetOf, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_is_notes_of, predicate: Tufts::Vocab::Terms.is_notes_of, multiple: true do |index|
      index.as :stored_searchable
    end
    property :relsext_is_slides_of, predicate: Tufts::Vocab::Terms.is_slides_of, multiple: true do |index|
      index.as :stored_searchable
    end
  end
end