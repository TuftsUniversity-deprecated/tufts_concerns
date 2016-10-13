module VotingRecordIndexing
  extend ActiveSupport::Concern
  included do
    self.indexer = ::VotingRecordIndexer
  end
end
