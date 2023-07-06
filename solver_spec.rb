require_relative 'solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'Returns 1 when the inputed number is 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'Returns the factorial of a positive integer' do
      expect(solver.factorial(8)).to eq(40_320)
      expect(solver.factorial(4)).to eq(24)
    end
  end

  describe '#reverse' do
    it 'Returns the string reversed' do
      expect(solver.reverse('bread')).to eq('daerb')
      expect(solver.reverse('after')).to eq('retfa')
    end
  end

  describe '#fizzbuz' do
    it 'returns fizz if divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end

    it 'returns buzz if divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'returns fizzbuzz if divisible by 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns input integer as string if divisible by neither 3 nor 5' do
      expect(solver.fizzbuzz(8)).to eq('8')
    end
  end
end
