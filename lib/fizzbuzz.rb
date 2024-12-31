# Todo
# 1から100までの数をプリントするプログラムを書け。  
# ただし3の倍数のときは数の代わりに「Fizz」と、  
# 5の倍数のときは「Buzz」とプリントし、  
# 3と5両方の倍数の場合には「FizzBuzz」とプリントすること。  
 
class FizzBuzz

  def self.convert(num)  
    if num % 15 == 0  
      "FizzBuzz"  
    elsif num % 3 == 0  
      "Fizz"  
    elsif num % 5 == 0
      "Buzz"
    else
      num.to_s  
    end  
  end

  def self.print_sequence  
    (1..100).each do |num|  
      puts convert(num)  
    end  
  end  
end  

# FizzBuzz.print_sequence
