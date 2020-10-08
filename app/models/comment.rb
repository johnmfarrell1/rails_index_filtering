class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  scope :status, ->(status) { where(status: status) }

  STATUSES = %w[pending accepted refused]
end
