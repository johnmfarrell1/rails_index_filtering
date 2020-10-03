module Filterable
  extend ActiveSupport::Concern

  class_methods do
    def filter(filtering_params)
      results = all
      filtering_params.each do |key, value|
        value = value.reject(&:blank?) if value.is_a?(Array)
        results = results.public_send(key, value) if value.present?
      end
      results
    end
  end
end