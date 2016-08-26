class Fcrepo3FileSet < ActiveFedora::Base
  # Based on
  # #https://github.com/curationexperts/alexandria/blob/c0292ea4cae9faf51fb65f2ad3207cd2c3ff2396/app/models/file_set.rb
  include ::CurationConcerns::FileSetBehavior

  # ['RELS-EXT','DC','DCA-ADMIN','DCA-META','DC-DETAIL-META']
  directly_contains :fcrepo3stream, has_member_relation: ::RDF::URI('http://pcdm.org/use#OriginalFile'), class_name: 'Hydra::PCDM::File'
  def thumbnail_id
    nil
  end

  #def self.indexer
  #  FileSetIndexer
  #end
end