module Filterable
  extend ActiveSupport::Concern

  included do
    @filter_scopes ||= []
  end

  class_methods do
    attr_reader :filter_scopes

    def filter_scope(name, *args)
      scope name, *args
      filter_scopes << name
    end

    def filter_by(filtering_params)
      results = all
      filtering_params.each do |filter_scope, filter_value|
        filter_value = filter_value.select(&:present?) if filter_value.is_a?(Array)
        results = results.public_send(filter_scope, filter_value) if filter_value.present?
      end
      results
    end
  end
end
