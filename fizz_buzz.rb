class FizzBuzz

  def play(number)
    result = ''
    if number % 3 == 0
      result << 'Fizz'
    end
    if number % 5 == 0
      result << 'Buzz'
    end
    return result
  end
end