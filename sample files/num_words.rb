module InWords
  def in_words
    h = self - (self%100)
    num = []
    teens = []
    tao = (self%100)# - (self%10)
    if tao > 10 && tao < 20
      t = teens[tao]
    else
      t = tao - (self%10)
    end
    o = self%10

    ones = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
            7 => "seven", 8 => "eight", 9 => "nine"}

    tens = {10 => "ten", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty",
            70 => "seventy", 80 => "eighty", 90 => "ninety"}

    teens = {11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
             15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

    hundreds = {100 => "one hundred", 200 => "two hundred", 300 => "three hundred", 400 => "four hundred",
                500 => "five hundred", 600 => "six hundred", 700 => "seven hundred", 800 => "eight hundred",
                900 => "nine hundred"}

      if self < 1000 and tao.between?(10, 20)
        num << hundreds[h]
        num << teens[tao]
        #num << ones[o]
        num.join(" ")
      elsif self < 1000
        num << hundreds[h]
        num << tens[t]
        num << ones[o]
        num.join(" ")
      elsif self == 1000
        num << "one thousand"
      else
        num << "That number is higher than 1000"
    end
  end
end

class Fixnum
  include InWords
end