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
    satisfies_fizz_buzz_rule(number, 3)
  end

  def is_buzz(number)
    satisfies_fizz_buzz_rule(number, 5)
  end

  def satisfies_fizz_buzz_rule(number, rule_number)
    number % rule_number == 0 || number.to_s.include?(rule_number.to_s)
  end

  private :is_fizz, :is_buzz, :satisfies_fizz_buzz_rule

end