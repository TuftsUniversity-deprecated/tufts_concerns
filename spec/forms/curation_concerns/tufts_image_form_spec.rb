# Generated via
#  `rails generate curation_concerns:work TuftsImage`
require 'rails_helper'

describe CurationConcerns::TuftsImageForm do
  let(:work) { TuftsAudio.new }
  let(:form) { described_class.new(work, nil) }

  describe "TuftsImageForm" do
    subject { form }

    it { should respond_to(:legacy_pid) }
    it { should respond_to(:alternative) }
    it { should respond_to(:dc_type) }
    it { should respond_to(:abstract) }
    it { should respond_to(:date) }
    it { should respond_to(:personal_name) }
    it { should respond_to(:corporate_name) }
    it { should respond_to(:city) }
    it { should respond_to(:country) }
    it { should respond_to(:continent) }
    it { should respond_to(:geographic_name) }
    it { should respond_to(:complex_subject) }
    it { should respond_to(:genre) }
    it { should respond_to(:spatial) }
    it { should respond_to(:temporal) }
    it { should respond_to(:purl) }
    it { should respond_to(:references) }
    it { should respond_to(:replaces) }
    it { should respond_to(:table_of_contents) }
    it { should respond_to(:is_replaced_by) }
    it { should respond_to(:extent) }
    it { should respond_to(:provenance) }
    it { should respond_to(:rights_holder) }
    it { should respond_to(:funder) }
    it { should respond_to(:edm_rights) }
    it { should respond_to(:held_by) }
    it { should respond_to(:has_agent_note) }
    it { should respond_to(:date_submitted) }
    it { should respond_to(:date_issued) }
    it { should respond_to(:date_available) }
    it { should respond_to(:date_accepted) }
    it { should respond_to(:date_copyrighted) }
    it { should respond_to(:audience) }
    it { should respond_to(:resource_modified) }
    it { should respond_to(:license) }
    it { should respond_to(:accrual_policy) }
    it { should respond_to(:steward) }
    it { should respond_to(:is_replaced_by) }
    it { should respond_to(:internal_note) }
    it { should respond_to(:displays_in) }
    it { should respond_to(:term_of_restriction) }
    it { should respond_to(:end_date) }
    it { should respond_to(:batch_id) }
  end
end
