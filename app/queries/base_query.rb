class BaseQuery
  attr_reader :relation

  def initialize(relation = self.class.module_parent)
    @relation = relation
  end

  class << self
    delegate :call, to: :new
  end
end