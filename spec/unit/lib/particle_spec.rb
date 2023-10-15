# frozen_string_literal: true

describe Particle do
  context 'when initialized' do
    context 'when no velocity was given' do
      let(:x) { 10 }
      let(:y) { 11 }
      let(:particle) { FactoryBot.build(:particle, x:, y:) }

      it 'must hold the information' do
        particle = Particle.new(x:, y:)

        expect(particle.x).to eq(x)
        expect(particle.y).to eq(y)
        expect(particle.vx).to eq(0)
        expect(particle.vy).to eq(0)
      end
    end

    context 'when velocity was given' do
      let(:x) { 10 }
      let(:y) { 11 }
      let(:particle) { FactoryBot.build(:particle, :moving, x:, y:) }

      it 'must hold the information' do
        expect(particle.x).to eq(x)
        expect(particle.y).to eq(y)
        expect(particle.vx).not_to eq(0)
        expect(particle.vy).not_to eq(0)
      end
    end
  end
end
