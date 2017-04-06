require 'spec_helper'

describe TuftsTemplate do
  subject(:template_instance) { described_class.new }
  it 'most metadata attributes are not required' do
    expect(template_instance.required?(:title)).to be_falsey
    expect(template_instance.required?(:displays)).to be_falsey
  end

  it 'has a unique pid namespace' do
    template = TuftsTemplate.new(template_name: 'Template #1')
    template.save
  end

  describe 'template_name attribute' do
    subject(:template_instance) { described_class.new }
    it 'getter and setter methods exist' do
      template_instance.template_name = 'Title #1'
      expect(template_instance.template_name).to eq 'Title #1'
    end

    it 'is required' do
      expect(template_instance.required?(:template_name)).to be_truthy
    end
  end

  describe 'publishing' do
    subject(:template_instance) { described_class.new }
    it 'is never published' do
      expect(template_instance.published?).to be_falsey
    end
  end

  describe "#apply_attributes" do
    subject(:template_instance) { described_class.new }
    it 'raises an error' do
      expect { template_instance.apply_attributes(description: 'new desc') }.to raise_exception(CannotApplyTemplateError)
    end
  end

  describe 'deleted templates' do
    subject(:template) { described_class.new }
    let(:deleted_template) { FactoryGirl.create(:template) }
    before do
      skip "purging a template should hard-delete it (tufts #339)"

      TuftsTemplate.delete_all
      template.template_name = 'Name'
      template.save!
      deleted_template.purge!
    end
    it "don't appear in the list of all active templates" do
      expect(template.state).to eq 'A'
      expect(deleted_template.state).to eq 'D'
      expect(TuftsTemplate.count).to eq 2
      expect(TuftsTemplate.active).to eq [template]
    end
  end
end
