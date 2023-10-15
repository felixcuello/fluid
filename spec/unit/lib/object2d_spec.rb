# frozen_string_literal: true

describe Object2d do
  context 'when initialized' do
    let(:x) { 10 }
    let(:y) { 11 }

    context 'when no velocity was given' do
      let(:object2d) { FactoryBot.build(:object2d, x:, y:) }

      it 'must hold the information' do
        expect(object2d.x).to eq(x)
        expect(object2d.y).to eq(y)
        expect(object2d.vx).to eq(0)
        expect(object2d.vy).to eq(0)
      end
    end

    context 'when velocity was given' do
      let(:object2d) { FactoryBot.build(:object2d, :moving, x:, y:) }

      it 'must hold the information' do
        expect(object2d.x).to eq(x)
        expect(object2d.y).to eq(y)
        expect(object2d.vx).not_to eq(0)
        expect(object2d.vy).not_to eq(0)
      end
    end
  end
end
