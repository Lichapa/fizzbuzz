require './solver'

describe Solver do
  before :each do
    @solver = Solver.new 
  end

  it 'has instance of class Solver' do
    expect(@solver).to be_instance_of Solver
  end

  


end