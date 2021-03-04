# frozen_string_literal: true

require 'faker'
namespace :fake_store do
  desc 'Create fake store data'
  task fake_store: :environment do
    10.times do
      Store.create!(
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude,
        store_name: Faker::Company.name,
        address: Faker::Address.full_address
      )
    end
  end
end
