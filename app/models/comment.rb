class Comment < ApplicationRecord
  include Visible
  before_validation :set_default_status

  private
  def set_default_status
    self.status = "public"
  end

  belongs_to :article
end
