require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  context '#factorial' do
    it 'should test the factorial method' do
      expect(@solver.factorial(4)).to eq 24
    end
    it 'should return 1 if the argument is 0' do
      expect(@solver.factorial(0)).to eq 1
    end
    it 'should raise an expection if a negative integer is given' do
      expect(@solver.factorial(-4)).to eq 'Oh, there is an error. Please use a positive number'
    end
  end
end