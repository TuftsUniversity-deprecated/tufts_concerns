require 'rdf/vocab'
module Tufts
  module Vocab
    # http://dl.tufts.edu/terms/identifier
    class Terms < RDF::Vocabulary('http://dl.tufts.edu/terms#')
      # term :VotingRecord
      # term :EAD
      # term :EAC
      term :legacy_pid
      term :local_file_type
    end
  end
end
