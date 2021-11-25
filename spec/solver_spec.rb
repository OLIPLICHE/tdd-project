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

  context '#reverse' do
    it 'should return word reversed' do
      expect(@solver.reverser('Hello')).to eq 'olleH'
    end
  end

  context '#fizzbuzz' do
    it 'should return fizz when N is divisible BY 3' do
      expect(@solver.fizzbuzz(3)).to eq 'fizz'
    end
    it 'should return buzz when N is divisible BY 5' do
      expect(@solver.fizzbuzz(5)).to eq 'buzz'
    end
    it 'should return fizzbuzz when N is divisible BY 3 and 5' do
      expect(@solver.fizzbuzz(30)).to eq 'fizzbuzz'
    end
    it 'should return N when N is not divisible BY 3 and 5' do
      expect(@solver.fizzbuzz(7)).to eq '7'
    end
  end
end
