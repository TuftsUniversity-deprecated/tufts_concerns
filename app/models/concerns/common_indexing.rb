module CommonIndexing
  extend ActiveSupport::Concern
  included do
    self.indexer = ::CommonIndexer
  end
end
