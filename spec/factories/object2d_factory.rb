# frozen_string_literal: true

require 'ffaker'
require 'factory_bot'

FactoryBot.define do
  factory :object2d do |f|
    f.x { FFaker::Random.rand(0..100) }
    f.y { FFaker::Random.rand(0..100) }

    trait :moving do |f|
      f.vx { temp = FFaker::Random.rand(-5..5) until !temp.nil? && !temp.zero? }
      f.vy { temp = FFaker::Random.rand(-5..5) until !temp.nil? && !temp.zero? }
    end
  end
end
