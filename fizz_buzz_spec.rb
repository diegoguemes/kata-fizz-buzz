require 'rspec'
require './fizz_buzz'

describe 'FizzBuzz' do

  before :each do
    @fizz_buzz =FizzBuzz.new
  end

  describe 'says Fizz when number' do
    it 'is divisible by 3' do
      @fizz_buzz.play(3).should eq('Fizz')
      @fizz_buzz.play(6).should eq('Fizz')
    end

    it 'contains a 3' do
      @fizz_buzz.play(13).should eq('Fizz')
    end
  end

  it 'says Buzz when number is divisible by 5' do
    @fizz_buzz.play(5).should eq('Buzz')
    @fizz_buzz.play(10).should eq('Buzz')
  end

  it 'appends words when number satisfies different rules' do
    @fizz_buzz.play(15).should eq('FizzBuzz')
  end

  it 'says the number when number does not satisfy any rule' do
    @fizz_buzz.play(11).should eq('11')
  end
end