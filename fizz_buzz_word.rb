class FizzBuzzWord

  def initialize(word_number, text)
    @word_number = word_number
    @text = text
  end

  def say(number)
    (number % @word_number == 0 || number.to_s.include?(@word_number.to_s)) ?
        @text :
        ''
  end
end