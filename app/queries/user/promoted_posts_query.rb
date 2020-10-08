class User
  class PromotedPostsQuery < BaseQuery
    def call
      relation.joins(:posts).merge(Post.promoted).distinct
    end
  end
end