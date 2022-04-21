require './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'testing solver class exist' do
    it 'has instance of class Solver' do
      expect(@solver).to be_instance_of Solver
    end
  end

  context 'testing factorial method' do
    it 'returns 1 when given 0' do
      expect(@solver.factorial(0)).to eql(1)
    end

    it 'returns 1 when given 1' do
      expect(@solver.factorial(1)).to eq(1)
    end

    it 'returns 24 when given 4' do
      expect(@solver.factorial(4)).to eq(24)
    end

    it 'return exception when given a negative number' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end
end
