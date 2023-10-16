# frozen_string_literal: true

require 'ffaker'
require 'factory_bot'

FactoryBot.define do
  factory :world do
    particles { [] }

    initialize_with { World.instance }

    trait :with_randomized_particles do
      particles { FactoryBot.build_list(:particle, FFaker::Random.rand(10..50)) }
    end
  end
end
