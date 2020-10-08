class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  scope :promoted, -> { where(status: 'promoted') }

  STATUSES = %w[pending active deactivated promoted]
end
