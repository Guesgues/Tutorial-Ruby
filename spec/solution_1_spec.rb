require_relative '../solution_1'

describe Tutorial do
  let(:klass) { described_class.new }

  describe 'solution' do
    subject { klass.solution(x) }

    context 'return and reverse number' do
      let(:x) { 123 }
      it 'when 123 return 321' do
        expect(subject).to eq '321'
      end
    end

    context 'return and reverse number' do
      let(:x) { 456 }
      it 'when 456 return 654' do
        expect(subject).to eq '654'
      end
    end

    context 'return and reverse number' do
      let(:x) { 829 }
      it 'when 829 return 982' do
        expect(subject).to eq '982'
      end
    end
  end

  describe 'solution_3' do
    subject { klass.solution_3(a,b,c) }

    context 'return alphabet' do
      let(:a) { 6 }
      let(:b) { 1 }
      let(:c) { 1 }
      it 'when a eq 6, b eq 1 and c eq 1 return aabaacaa' do
        expect(subject).to eq 'aacaabaa'
      end
    end

    context 'return alphabet' do
      let(:a) { 1 }
      let(:b) { 3 }
      let(:c) { 1 }
      it 'when a eq 1, b eq 3 and c eq 1 return bbcba' do
        expect(subject).to eq 'bbcba'
      end
    end

    context 'return alphabet' do
      let(:a) { 0 }
      let(:b) { 1 }
      let(:c) { 8 }
      it 'when a eq 0, b eq 1 and c eq 8 return ccbcc' do
        expect(subject).to eq 'ccbcc'
      end
    end

    context 'return alphabet' do
      let(:a) { 1 }
      let(:b) { 0 }
      let(:c) { 1 }
      it 'when a eq 1, b eq 3 and c eq 1 return ac' do
        expect(subject).to eq 'ac'
      end
    end

    context 'return alphabet' do
      let(:a) { 1 }
      let(:b) { 2 }
      let(:c) { 0 }
      it 'when a eq 1, b eq 3 and c eq 1 return abb' do
        expect(subject).to eq 'bba'
      end
    end
  end
end
