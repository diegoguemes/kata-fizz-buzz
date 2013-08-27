class FizzBuzz

  def play(number)
    result = ''
    if is_fizz(number)
      result << 'Fizz'
    end
    if is_buzz(number)
      result << 'Buzz'
    end
    result == ''  ?
        number.to_s :
        result
  end

  def is_fizz(number)
    number % 3 == 0 || number.to_s.include?('3')
  end

  def is_buzz(number)
    number % 5 == 0 || number.to_s.include?('5')
  end

  private :is_fizz, :is_buzz

end