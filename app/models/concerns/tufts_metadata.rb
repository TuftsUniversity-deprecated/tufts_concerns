module TuftsMetadata
  extend ActiveSupport::Concern

  included do
    property :f3_pid, predicate: RDF::URI('http://tufts.edu/ns/tdr/pid'), multiple: false
  end
end
