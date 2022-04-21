class Solver
  def factorial(num)
    if num.zero?
      1
    elsif num.negative?
      raise ArgumentError
    else
      num * factorial(num - 1)
    end
  end

  def reverse(str)
    str.chars.reverse.join
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'FizzBuzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'
    else
      num.to_s
    end
  end
end
