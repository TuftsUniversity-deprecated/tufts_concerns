module Fcrepo3Relationships
  extend ActiveSupport::Concern

  directly_contains_one :rels_ext, through: :files, type: ::RDF::URI('http://tufts.edu/use#Fcrepo3RelsExtFile'), class_name: 'Hydra::PCDM::File'
  directly_contains_one :dc, through: :files, type: ::RDF::URI('http://pcdm.org/use#OriginalFile'), class_name: 'Hydra::PCDM::File'
  directly_contains_one :dca_admin, through: :files, type: ::RDF::URI('http://tufts.edu/use#Fcrepo3DCAdminFile'), class_name: 'Hydra::PCDM::File'
  directly_contains_one :dca_meta, through: :files, type: ::RDF::URI('http://tufts.edu/use#Fcrepo3DCAMetaFile'), class_name: 'Hydra::PCDM::File'
  directly_contains_one :dca_detail_meta, through: :files, type: ::RDF::URI('http://tufts.edu/use#Fcrepo3DCADetailMetaFile'), class_name: 'Hydra::PCDM::File'
end