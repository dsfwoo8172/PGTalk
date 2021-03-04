# frozen_string_literal: true

class Store < ApplicationRecord
  # acts_as_mappable default_units: :kms,
  #                  default_formula: :sphere,
  #                  distance_field_name: :distance,
  #                  lat_column_name: :store_lat,
  #                  lng_column_name: :store_lng
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
