class User
  class CommentStatusQuery < BaseQuery
    def call(status)
      relation.joins(:comments).merge(Comment.status(status)).distinct
    end
  end
end