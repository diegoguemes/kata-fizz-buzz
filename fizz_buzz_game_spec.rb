require 'rspec'
require './fizz_buzz_game'
require './fizz_buzz_word'

describe 'FizzBuzz' do

  before :each do
    @game = FizzBuzzGame.new([
      FizzBuzzWord.new(3, 'Fizz'),
      FizzBuzzWord.new(5, 'Buzz')
    ])
  end

  describe 'says Fizz when number' do
    it 'is divisible by 3' do
      @game.play(3).should eq('Fizz')
      @game.play(6).should eq('Fizz')
    end

    it 'contains a 3' do
      @game.play(13).should eq('Fizz')
    end
  end

  describe 'says Buzz when number' do
    it 'is divisible by 5' do
      @game.play(5).should eq('Buzz')
      @game.play(10).should eq('Buzz')
    end

    it 'contains a 5' do
      @game.play(52).should eq('Buzz')
    end
  end

  it 'appends words when number satisfies different rules' do
    @game.play(15).should eq('FizzBuzz')
  end

  it 'says the number when number does not satisfy any rule' do
    @game.play(11).should eq('11')
  end
end