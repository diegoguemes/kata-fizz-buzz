require 'rspec'
require './fizz_buzz_game'
require './fizz_buzz_word'

describe 'FizzBuzz game' do

  before :each do
    @game = FizzBuzzGame.new([FizzBuzzWord.new(3, 'Fizz'),
                              FizzBuzzWord.new(5, 'Buzz')])
  end

  describe 'says Fizz when number' do
    it 'is divisible by 3' do
      @game.play(3).should == 'Fizz'
      @game.play(6).should == 'Fizz'
    end

    it 'contains a 3' do
      @game.play(13).should == 'Fizz'
    end
  end

  describe 'says Buzz when number' do
    it 'is divisible by 5' do
      @game.play(5).should == 'Buzz'
      @game.play(10).should == 'Buzz'
    end

    it 'contains a 5' do
      @game.play(52).should == 'Buzz'
    end
  end

  it 'appends different words when number satisfies multiple rules' do
    @game.play(15).should== 'FizzBuzz'
  end

  it 'says the number when number does not satisfy any rule' do
    @game.play(11).should == '11'
  end
end