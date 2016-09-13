require 'rdf'
module Tufts
  module Vocab
    # http://dl.tufts.edu/terms/identifier
    class TuftsTypeTerms < RDF::Vocabulary('http://dl.tufts.edu/terms/types#')
      term :VotingRecord
      term :EAD
      term :EAC
    end
  end
end