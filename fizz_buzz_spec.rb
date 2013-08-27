require 'rspec'

describe 'FizzBuzz' do

  it 'says Fizz when number is divisible by 3' do
    fizz_buzz = FizzBuzz.new
    fizz_buzz.play(3).should eq('Fizz')
    fizz_buzz.play(6).should eq('Fizz')
  end
end