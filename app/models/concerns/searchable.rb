module Searchable
  extend ActiveSupport::Concern

  included do
    @search_scopes ||= []
  end

  class_methods do
    attr_reader :search_scopes

    def search_scope(name, *args)
      scope name, *args
      @search_scopes << name
    end
  end
end