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
end
