require 'spec_helper'

describe Datastreams::ElectionRecord do
  describe "to_solr" do
    let(:file1) { File.new(File.expand_path(File.join(fixture_path, "../../../spec/fixtures/election_records/us_potus_1792_RECORD-XML.xml"))) }
    let(:potus1792) { Datastreams::ElectionRecord.from_xml(file1.read) }
    it "should only index the year part of the date" do
      potus1792.date = '1820-11'
      potus1792.to_solr['date_isi'].should == 1820
    end
    describe "state_name_facet, when the admin unit is a State" do
      subject(:record) { Datastreams::ElectionRecord.from_xml('<aas:election_record xmlns:aas="http://dca.tufts.edu/aas"> <aas:office><aas:role><aas:admin_unit geog_id="mes" name="Maine" type="State"></aas:admin_unit></aas:role></aas:office></aas:election_record>').to_solr }
      it "should be the states name" do
        record["state_name_sim"].should == ['Maine']
      end
    end
    describe "when the admin unit is a Territory" do
      subject(:record) { Datastreams::ElectionRecord.from_xml('<aas:election_record xmlns:aas="http://dca.tufts.edu/aas"> <aas:office><aas:role><aas:admin_unit geog_id="mes" name="Maine" type="Territory"></aas:admin_unit></aas:role></aas:office></aas:election_record>').to_solr }
      it "should be the territorys name" do
        record["state_name_sim"].should == ['Maine']
      end
    end

    describe "with some fixtures" do
      let(:file1) { File.new(File.expand_path(File.join(fixture_path, "../../../spec/fixtures/election_records/us_potus_1792_RECORD-XML.xml"))) }
      let(:potus1792) { Datastreams::ElectionRecord.from_xml(file1) }
      let(:file2) { File.new(File.expand_path(File.join(fixture_path, "../../../spec/fixtures/election_records/al_staterepresentative_madisoncounty_1820_RECORD-XML.xml"))) }
      let(:madisoncounty1820) { Datastreams::ElectionRecord.from_xml(f.read) }
      let(:potus_solr) { potus1792.to_solr }
      let(:county_solr) { madisoncounty1820.to_solr }
      it "should set field values" do # rubocop:disable RSpec/ExampleLength
        potus_solr["format_ssim"].should be == "Election Record"
        potus_solr["date_sim"].should be == "1792"
        potus_solr["date_isi"].should be == 1792
        potus_solr["iteration_tesim"].should be == ["First Ballot"]
        potus_solr["label_tesim"].should be == ["1792 President of the United States, Electoral College"]
        potus_solr["election_id_tesim"].should be == ["us.potus.1792"]
        potus_solr["handle_tesim"].should be == ["10427/65038"]
        potus_solr["election_type_tesim"].should be == ["Legislative"]
        potus_solr["election_type_sim"].should be == ["Legislative"]
        potus_solr["jurisdiction_tesim"].should be == ["Federal"]
        potus_solr["office_name_tesim"].should be == ["President of the United States"]
        potus_solr["office_name_sim"].should be == ["President of the United States"]
        potus_solr["office_id_ssim"].should be == ["ON082"]
        potus_solr["office_scope_tesim"].should be == ["Federal"]
        potus_solr["office_role_title_tesim"].should be == ["President of the United States"]
        potus_solr["office_role_title_sim"].should be == ["President of the United States"]
        potus_solr["office_role_scope_tesim"].should be == ["Federal"]
        potus_solr["candidate_name_tesim"].should be == ["George Washington", "John Adams", "George Clinton", "Thomas Jefferson", "Aaron Burr"]
        potus_solr["candidate_name_sim"].should be == ["George Washington", "John Adams", "George Clinton", "Thomas Jefferson", "Aaron Burr"]
        potus_solr["candidate_id_tesim"].should be == ["WG0011", "AJ0076", "CG0080", "JT0012", "BA0134"]
        county_solr["page_image_urn_ssim"].should be == ["tufts:central:dca:MS115:MS115.001.DO.11024", "tufts:central:dca:MS115:MS115.001.DO.11024", "tufts:central:dca:MS115:MS115.001.DO.11024", "tufts:central:dca:MS115:MS115.001.DO.11024", "tufts:central:dca:MS115:MS115.001.DO.11024", "tufts:central:dca:MS115:MS115.001.DO.11024", "tufts:central:dca:MS115:MS115.001.DO.11024", "tufts:central:dca:MS115:MS115.001.DO.11024"]
        county_solr["citation_tesim"].should be == ["Alabama Republican (Huntsville), August 11, 1820. (Phil's typewritten notes.)", "Election Record from Alabama State Archives.", "The Republican (Huntsville). August 11, 1820.", "The Republican (Huntsville). September 1, 1820.", "The Halcyon (Saint Stephens).  August 21, 1820."]
        county_solr["date_sim"].should be == "1820"
        county_solr["state_name_tesim"].should be == ["Alabama"]
        county_solr["state_name_sim"].should be == ["Alabama"]
        county_solr["state_county_name_tesim"].should be == ["Madison"]
        county_solr["state_county_name_sim"].should be == ["Madison"]
        county_solr["jurisdiction_tesim"].should be == ["State"]
        county_solr["jurisdiction_sim"].should be == ["State"]
        county_solr["office_name_tesim"].should be == ["House of Representatives"]
        county_solr["office_id_ssim"].should be == ["ON064"]
        county_solr["office_scope_tesim"].should be == ["State"]
        county_solr["office_role_title_tesim"].should be == ["State Representative"]
        county_solr["office_role_scope_tesim"].should be == ["County"]
      end
    end
  end
end
