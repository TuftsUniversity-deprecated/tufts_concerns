require 'rails_helper'

describe CurationConcerns::TuftsAudioForm do
  let(:work) { TuftsAudio.new }
  let(:form) { described_class.new(work, nil) }
  describe "#terms" do
    subject { form.terms }
    it do # rubocop:disable RSpec/ExampleLength
      is_expected.to eq [:title, :creator, :contributor, :description, :keyword, :rights, :publisher, :date_created,
                         :subject, :language, :identifier, :based_near, :related_url, :representative_id, :thumbnail_id,
                         :files, :visibility_during_embargo, :embargo_release_date, :visibility_after_embargo,
                         :visibility_during_lease, :lease_expiration_date, :visibility_after_lease, :visibility,
                         :ordered_member_ids, :source, :in_works_ids, :legacy_pid, :alternative, :dc_type, :abstract,
                         :date, :personal_name, :corporate_name, :city, :country, :continent, :geographic_name,
                         :complex_subject, :genre, :spatial, :temporal, :purl, :references, :replaces,
                         :table_of_contents, :is_replaced_by, :extent, :provenance, :rights_holder, :funder,
                         :edm_rights, :held_by, :has_agent_note, :date_submitted, :date_issued, :date_available,
                         :date_accepted, :date_copyrighted, :audience, :resource_modified, :license, :accrual_policy,
                         :steward, :is_replaced_by, :internal_note, :displays_in, :term_of_restriction, :end_date,
                         :batch_id]
    end
  end
end
