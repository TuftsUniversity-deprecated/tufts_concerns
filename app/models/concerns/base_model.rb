module BaseModel
  extend ActiveSupport::Concern

  include ::CurationConcerns::WorkBehavior
  include ::CurationConcerns::BasicMetadata

  include DescriptiveMetadata
  include AdministrativeMetadata
  include RelsExtMetadata
end