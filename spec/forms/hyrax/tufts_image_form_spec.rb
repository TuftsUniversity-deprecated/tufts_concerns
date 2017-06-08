# Generated via
#  `rails generate curation_concerns:work TuftsImage`
require 'rails_helper'

describe Hyrax::TuftsImageForm do
  let(:work) { TuftsAudio.new }
  let(:form) { described_class.new(work, nil, nil) }

  describe "TuftsImageForm" do
    subject { form }

    it { is_expected.to respond_to(:legacy_pid) }
    it { is_expected.to respond_to(:alternative) }
    it { is_expected.to respond_to(:dc_type) }
    it { is_expected.to respond_to(:abstract) }
    it { is_expected.to respond_to(:date) }
    it { is_expected.to respond_to(:personal_name) }
    it { is_expected.to respond_to(:corporate_name) }
    it { is_expected.to respond_to(:city) }
    it { is_expected.to respond_to(:country) }
    it { is_expected.to respond_to(:continent) }
    it { is_expected.to respond_to(:geographic_name) }
    it { is_expected.to respond_to(:complex_subject) }
    it { is_expected.to respond_to(:genre) }
    it { is_expected.to respond_to(:spatial) }
    it { is_expected.to respond_to(:temporal) }
    it { is_expected.to respond_to(:purl) }
    it { is_expected.to respond_to(:references) }
    it { is_expected.to respond_to(:replaces) }
    it { is_expected.to respond_to(:table_of_contents) }
    it { is_expected.to respond_to(:is_replaced_by) }
    it { is_expected.to respond_to(:extent) }
    it { is_expected.to respond_to(:provenance) }
    it { is_expected.to respond_to(:rights_holder) }
    it { is_expected.to respond_to(:funder) }
    it { is_expected.to respond_to(:edm_rights) }
    it { is_expected.to respond_to(:held_by) }
    it { is_expected.to respond_to(:has_agent_note) }
    it { is_expected.to respond_to(:date_submitted) }
    it { is_expected.to respond_to(:date_issued) }
    it { is_expected.to respond_to(:date_available) }
    it { is_expected.to respond_to(:date_accepted) }
    it { is_expected.to respond_to(:date_copyrighted) }
    it { is_expected.to respond_to(:audience) }
    it { is_expected.to respond_to(:resource_modified) }
    it { is_expected.to respond_to(:license) }
    it { is_expected.to respond_to(:accrual_policy) }
    it { is_expected.to respond_to(:steward) }
    it { is_expected.to respond_to(:internal_note) }
    it { is_expected.to respond_to(:displays_in) }
    it { is_expected.to respond_to(:term_of_restriction) }
    it { is_expected.to respond_to(:end_date) }
    it { is_expected.to respond_to(:batch_id) }
  end
end
