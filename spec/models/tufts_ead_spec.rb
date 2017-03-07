# Generated via
#  `rails generate curation_concerns:work TuftsEad`
require 'rails_helper'

describe TuftsEad do
  it 'has methods to support a draft version of the object'

  its(:human_readable_type) do
    expect(is_expected.to eq 'EAD')
  end

  its(:valid_child_concerns) do
    expect(is_expected.to eq [])
  end

  describe "#has_model" do
    let(:record) { TuftsEad.new(title: ['some title']) }
    subject { record.has_model }
    it { is_expected.to eq ['TuftsEad'] }
  end

end
