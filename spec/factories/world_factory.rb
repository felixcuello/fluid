# frozen_string_literal: true

require 'ffaker'
require 'factory_bot'

FactoryBot.define do
  factory :world do
    objects { FFaker::Random.rand(10..50).times.map { build(:particle) } }
  end
end
