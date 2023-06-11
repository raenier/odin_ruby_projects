require './lib/cipher2'

describe CaesarCipher2 do
  describe '#encrypt' do
    subject { CaesarCipher2.encrypt(word, number_shift) }
    context 'Different number shift' do
      let(:word) { 'ab' }
      context 'when provided with 1 as shifting number' do
        let(:number_shift) { 1 }
        it { is_expected.to eql('bc') }
      end

      context 'when provided with 2 as shifting number' do
        let(:number_shift) { 2 }
        it { is_expected.to eql('cd') }
      end

      context 'when provided with 3 as shifting number' do
        let(:number_shift) { 3 }
        it { is_expected.to eql('de') }
      end
    end

    context 'Different given word' do
      let(:number_shift) { 1 }

      context 'Mixed cases' do
        let(:word) { 'aBcD' }
        it { is_expected.to eql('bCdE') }
      end

      context 'With Spaces' do
        let(:word) { 'ab cd ef' }
        it { is_expected.to eql('bc de fg') }
      end
    end
  end
end