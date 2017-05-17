module Downloadable
  extend ActiveSupport::Concern

  def initialize
    @downloadable = true
    super
  end
end
