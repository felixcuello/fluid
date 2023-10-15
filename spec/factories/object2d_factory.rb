# frozen_string_literal: true

require 'ffaker'
require 'factory_bot'

FactoryBot.define do
  factory :object2d do |object|
    object.x { FFaker::Random.rand(0..100) }
    object.y { FFaker::Random.rand(0..100) }

    trait :moving do |moving_object|
      moving_object.vx { temp = FFaker::Random.rand(-5..5) until !temp.nil? && !temp.zero? }
      moving_object.vy { temp = FFaker::Random.rand(-5..5) until !temp.nil? && !temp.zero? }
    end
  end
end
