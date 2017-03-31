# Generated via
#  `rails generate curation_concerns:work Work`
require 'rails_helper'

RSpec.describe Work do
  it 'has methods to support a draft version of the object'

  its(:human_readable_type) do
    expect(is_expected.to(eq('Work')))
  end

  its(:valid_child_concerns) do
    expect(is_expected.to(eq([TuftsAudio, TuftsEad, TuftsGenericObject, TuftsImage,
                              TuftsPdf, TuftsRcr, TuftsTei, TuftsVideo, TuftsVotingRecord,
                              Work])))
  end

  describe "#has_model" do
    subject { record.has_model }
    let(:record) { Work.new(title: ['some title']) }
    it { is_expected.to eq ['Work'] }
  end
end
