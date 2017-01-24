require 'spec_helper'

describe TuftsGenericObject do
  it 'has methods to support a draft version of the object' do
    expect(TuftsGenericObject.respond_to?(:build_draft_version)).to be_truthy
  end

  describe "to_class_uri" do
    subject { TuftsGenericObject }
    it "has sets the class_uri" do
      expect(subject.to_class_uri).to eq 'info:fedora/cm:Object.Generic'
    end
  end

  describe "setting items" do
    it "should accept a hash" do
      subject.item_attributes = { "0" => { "item_id" => '0', "link" => "link one", "mimeType" => "mime one", "fileName" => "file one" }, "1"=> { "item_id" => '1', "link" => "link two", "mimeType" => "mime two", "fileName" => "file two"}, "2" => { "item_id" => '2', "link" => "link three", "mimeType" => "mime three", "fileName" => "file three" } }
      expect(subject.item(1).link).to eq ["link two"]
      expect(subject.item(2).item_id).to eq ["2"]
    end
  end
end
