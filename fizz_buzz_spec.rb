require 'rspec'
require './fizz_buzz'

describe 'FizzBuzz' do

  before :each do
    @fizz_buzz =FizzBuzz.new
  end

  it 'says Fizz when number is divisible by 3' do
    @fizz_buzz.play(3).should eq('Fizz')
    @fizz_buzz.play(6).should eq('Fizz')
  end

  it 'says Buzz when number is divisible by 5' do
    @fizz_buzz.play(5).should eq('Buzz')
    @fizz_buzz.play(10).should eq('Buzz')
  end
end