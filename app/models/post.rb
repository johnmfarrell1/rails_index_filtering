class Post < ApplicationRecord
  STATUSES = %W[pending active inactive promoted]
  belongs_to :user
end
