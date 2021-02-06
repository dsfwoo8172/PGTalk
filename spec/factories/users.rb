# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { :password }
    role { :client }
    trait :visitor do
      role { :visitor }
    end
  end
end
