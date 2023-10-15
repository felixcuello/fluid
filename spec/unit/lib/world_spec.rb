# frozen_string_literal: true

require 'spec_helper'

describe World do
  let(:width) { 640 }
  let(:height) { 480 }
  let(:world) { FactoryBot.build(:world) }

  describe '#initialize' do
    it 'should create a new world' do
      expect(world).to be_a World
      expect(world.width).to eq width
      expect(world.height).to eq height
    end
  end
end
