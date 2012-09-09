module CalculatorModule
   class Numeric
       def add(num)
           self + num
         end
       def subtract(num)
           self - num
         end
       def multiply_by(num)
           self * num
         end
       def divide_by(num)
           self / Float(num)
         end
  end
end