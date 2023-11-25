# frozen_string_literal: true

describe Drop do
  context 'when initialized' do
    context 'when no velocity was given' do
      let(:x) { 10 }
      let(:y) { 11 }
      let(:drop) { FactoryBot.build(:drop, x:, y:) }

      it 'must hold the information' do
        drop = Drop.new(x:, y:)

        expect(drop.x).to eq(x)
        expect(drop.y).to eq(y)
        expect(drop.vx).to eq(0)
        expect(drop.vy).to eq(0)
      end
    end

    context 'when velocity was given' do
      let(:x) { 10 }
      let(:y) { 11 }
      let(:drop) { FactoryBot.build(:drop, :moving, x:, y:) }

      it 'must hold the information' do
        expect(drop.x).to eq(x)
        expect(drop.y).to eq(y)
        expect(drop.vx).not_to eq(0)
        expect(drop.vy).not_to eq(0)
      end
    end
  end
end
