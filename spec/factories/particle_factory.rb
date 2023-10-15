# frozen_string_literal: true

require 'ffaker'
require 'factory_bot'

FactoryBot.define do
  factory :particle do
    x { FFaker::Random.rand(0..100) }
    y { FFaker::Random.rand(0..100) }

    trait :moving do
      vx { temp = FFaker::Random.rand(-5..5) until !temp.nil? && !temp.zero? }
      vy { temp = FFaker::Random.rand(-5..5) until !temp.nil? && !temp.zero? }
    end
  end
end
