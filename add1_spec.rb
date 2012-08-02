require './add1'

describe 'Array' do
  subject { [1, 4, 1, 5, 1] }

  describe '#add1' do
    let(:val) { 1 }

    context 'when n = 0' do
      let(:n) { 0 }
      it 'adds all occurance if n = 0' do
        subject.add1(val, n).should == [2, 4, 2, 5, 2]
      end
    end

    context 'when n > 0' do
      let(:n) { 2 }
      it 'adds from left to right if n > 0' do
        subject.add1(val, n).should == [2, 4, 2, 5, 1]
      end
    end

    context 'when n < 0' do
      let(:n) { -2 }
      it 'adds from right to left if n < 0' do
        subject.add1(val, n).should == [1, 4, 2, 5, 2]
      end
    end
  end
end