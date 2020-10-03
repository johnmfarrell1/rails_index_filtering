class User < ApplicationRecord
  include Searchable
  include Filterable

  search_scope :first_name, ->(first_name) { where(first_name: first_name) }
  search_scope :last_name, ->(last_name) { where(last_name: last_name) }
  search_scope :country, ->(country) { where(country: country) }
end
