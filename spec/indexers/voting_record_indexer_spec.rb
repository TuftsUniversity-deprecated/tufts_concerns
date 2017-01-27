require 'spec_helper'

describe VotingRecordIndexer do
  let(:indexer) { described_class.new }

  describe "#generate_solr_document" do
    subject { indexer.generate_solr_document }

    it "has required fields" do
      
    end
  end
end