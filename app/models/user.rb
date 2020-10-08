class User < ApplicationRecord
  include Filterable

  has_many :posts
  has_many :comments

  filter_scope :first_name, ->(first_name) { where(first_name: first_name) }
  filter_scope :last_name, ->(last_name) { where(last_name: last_name) }
  filter_scope :country, ->(country) { where(country: country) }
  filter_scope :with_promoted_posts, PromotedPostsQuery
  filter_scope :with_comment_status, CommentStatusQuery

  delegate :count, to: :posts, prefix: true
  delegate :count, to: :comments, prefix: true
end
