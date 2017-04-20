require 'spec_helper'

describe VotingRecordIndexer do
  let(:user) { User.create(username: 'test') }
  let(:work) { TuftsVotingRecord.new(id: 'test_vr1') }
  let(:file) { File.open(File.expand_path(File.join(fixture_path, "../../../spec/fixtures/election_records/al_staterepresentative_madisoncounty_1820_RECORD-XML.xml"))) }

  before do
    work.title = ['Alabama 1820 House of Representatives, Madison County']
    file_set = FileSet.new
    file_set.apply_depositor_metadata user.username
    file_set.visibility = Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC
    file_set.title = ['test file set']
    actor = CurationConcerns::Actors::FileSetActor.new(file_set, user)
    actor.create_content(file, 'original_file')
    actor.create_metadata(work)
    work.save
  end
  describe "#generate_solr_document" do
    it "has required fields" do
      work = TuftsVotingRecord.find('test_vr1')
      solr_doc = described_class.new(work).generate_solr_document
      solr_doc["title_tesim"].should be == ['Alabama 1820 House of Representatives, Madison County']
      solr_doc["title_sim"].should be == ['Alabama 1820 House of Representatives, Madison County']
      solr_doc["voting_record_xml_tesi"].should be == file.read
    end
  end
end