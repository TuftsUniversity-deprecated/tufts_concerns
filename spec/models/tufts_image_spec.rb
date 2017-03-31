# Generated via
#  `rails generate curation_concerns:work TuftsImage`
require 'rails_helper'

describe TuftsImage do
  it 'has methods to support a draft version of the object'

  its(:human_readable_type) do
    expect(is_expected.to eq 'Image')
  end

  its(:valid_child_concerns) do
    expect(is_expected.to eq [])
  end

  describe "#has_model" do
    subject { record.has_model }
    let(:record) { TuftsImage.new(title: ['some title']) }
    it { is_expected.to eq ['TuftsImage'] }
  end
end
