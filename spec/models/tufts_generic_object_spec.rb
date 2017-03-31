require 'spec_helper'

describe TuftsGenericObject do
  it 'has methods to support a draft version of the object'

  its(:human_readable_type) do
    expect(is_expected.to(eq('Generic Object')))
  end

  its(:valid_child_concerns) do
    expect(is_expected.to(eq([])))
  end

  describe "#has_model" do
    subject { record.has_model }
    let(:record) { TuftsGenericObject.new(title: ['some title']) }
    it { is_expected.to eq ['TuftsGenericObject'] }
  end
end
