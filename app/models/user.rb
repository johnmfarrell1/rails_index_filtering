class User < ApplicationRecord
  include Filterable

  filter_scope :first_name, ->(first_name) { where(first_name: first_name) }
  filter_scope :last_name, ->(last_name) { where(last_name: last_name) }
  filter_scope :country, ->(country) { where(country: country) }
  filter_scope :from_spain, User::FromCountryQuery.new('Spain')
end
