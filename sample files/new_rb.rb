

def add(num1,num2)
  @num1 = num1
  @num2 = num2
  output("sum", num1 + num2)
end

def subtract(num1,num2)
  @num1 = num1
  @num2 = num2
  output("difference", num1 - num2)
end

def multiply(num1,num2)
  @num1 = num1
  @num2 = num2
  output("product", num1 * num2)
end

def divide(num1,num2)
  @num1 = num1
  @num2 = num2
  output("quotient", Float(num1) / Float(num2))
end
def output(operator, result)
  "The #{operator} of #{@num1} and #{@num2} is #{result}."
end

class Integer
  include Calculator
end

