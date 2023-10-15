# frozen_string_literal: true

require 'spec_helper'

# rubocop:disable Metrics/BlockLength
describe World do
  let(:width) { 640 }
  let(:height) { 480 }
  let(:world) { FactoryBot.build(:world) }

  describe '#initialize' do
    it 'should create a new world' do
      expect(world).to be_a World
      expect(world.width).to eq width
      expect(world.height).to eq height
      expect(world.objects).to be_empty
    end

    it 'must only be one world' do
      world = World.instance
      world2 = World.instance

      expect(world).to eq world2
    end
  end

  context 'when creating a world with randomized particles' do
    let(:world) { FactoryBot.build(:world, :with_randomized_particles) }

    it 'must have particles' do
      expect(world.objects).not_to be_empty
    end
  end

  context 'when adding a particle' do
    let(:particle) { FactoryBot.build(:particle) }

    it 'must add the particle to the world' do
      world.add_particle(particle)

      expect(world.objects).to include particle
    end
  end
end
# rubocop:enable Metrics/BlockLength
