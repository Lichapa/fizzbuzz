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

  context 'testing reverse string method' do
    it 'returns a string reversed' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
    it 'returns a reversed string' do
      expect(@solver.reverse('love')).to eq('evol')
    end
  end

  context 'testing fizzbuzz method' do
    it 'returns fizz on number divisible by 3' do
      number = @solver.fizzbuzz(3)
      expect(number).to eq 'Fizz'
    end
    it 'returns buzz on number divisible by 5' do
      number = @solver.fizzbuzz(5)
      expect(number).to eq 'Buzz'
    end
    it 'returns fizz on number divisible by 3 and 5' do
      number = @solver.fizzbuzz(15)
      expect(number).to eq 'FizzBuzz'
    end
    it 'returns number on number not divisible by 3 or 5' do
      number = @solver.fizzbuzz(7)
      expect(number).to eq '7'
    end
  end
end
