class Integer
  def fibonacci
    previous = 1
    previous_previous = 0
    current = previous + previous_previous
    if self < 0
      raise "Number invalid"
    else
      (1..self).each do
        previous_previous = previous
        previous = current
        current = previous + previous_previous
        puts current
      end
    end
  end
end

 4.fibonacci