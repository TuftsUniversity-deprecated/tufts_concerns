module CommonFormProperties
  extend ActiveSupport::Concern
  included do
    delegate :legacy_pid, to: :model
    delegate :alternative, to: :model
    delegate :dc_type, to: :model
    delegate :abstract, to: :model
    delegate :date, to: :model
    delegate :personal_name, to: :model
    delegate :corporate_name, to: :model
    delegate :city, to: :model
    delegate :country, to: :model
    delegate :continent, to: :model
    delegate :hierarchical_geographic, to: :model
    delegate :complex_subject, to: :model
    delegate :genre, to: :model
    delegate :spatial, to: :model
    delegate :temporal, to: :model
    delegate :purl, to: :model
    delegate :references, to: :model
    delegate :replaces, to: :model
    delegate :table_of_contents, to: :model
    delegate :is_replaced_by, to: :model
    delegate :extent, to: :model
    delegate :provenance, to: :model
    delegate :rights_holder, to: :model
    delegate :funder, to: :model
    delegate :edm_rights, to: :model
    delegate :held_by, to: :model
    delegate :has_agent_note, to: :model
    delegate :date_submitted, to: :model
    delegate :date_issued, to: :model
    delegate :date_available, to: :model
    delegate :date_accepted, to: :model
    delegate :date_copyrighted, to: :model
    delegate :audience, to: :model
    delegate :resource_modified, to: :model
    delegate :license, to: :model
    delegate :accrual_policy, to: :model
    delegate :steward, to: :model
    delegate :is_replaced_by, to: :model
    delegate :internal_note, to: :model
    delegate :displays_in, to: :model
    delegate :term_of_restriction, to: :model
    delegate :end_date, to: :model
    delegate :batch_id, to: :model

    self.terms += [:legacy_pid, :alternative, :dc_type, :abstract, :date, :personal_name, :corporate_name, :city,
                   :country, :continent, :hierarchical_geographic, :complex_subject, :genre, :spatial, :temporal,
                   :purl, :references, :replaces, :table_of_contents, :is_replaced_by, :extent, :provenance,
                   :rights_holder, :funder, :edm_rights, :held_by, :has_agent_note, :date_submitted, :date_issued,
                   :date_available, :date_accepted, :date_copyrighted, :audience, :resource_modified, :license,
                   :accrual_policy, :steward, :is_replaced_by, :internal_note, :displays_in, :term_of_restriction,
                   :end_date, :batch_id]

  end
end
