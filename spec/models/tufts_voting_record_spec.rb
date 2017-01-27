require 'spec_helper'

describe TuftsVotingRecord do
  it 'has methods to support a draft version of the object' do
    # expect(described_class).to respond_to(:build_draft_version)
  end

  describe "#has_model" do
    let(:record) { TuftsVotingRecord.new(title: ['some title']) }
    subject { record.has_model }
    it { is_expected.to eq ['TuftsVotingRecord'] }
  end
end
