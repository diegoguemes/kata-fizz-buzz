class FizzBuzzGame

  def initialize(words)
    @words = words
  end

  def play(number)
    result = ''
    @words.each do |word|
      result << word.say(number)
    end
    return number.to_s if result == ''
    return result
  end
end