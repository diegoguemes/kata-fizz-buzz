class FizzBuzzGame

  def initialize(words)
    @words = words
  end

  def play(number)
    result = ''
    @words.each do |word|
      result << word.say(number)
    end
    result == ''  ?
        number.to_s :
        result
  end
end