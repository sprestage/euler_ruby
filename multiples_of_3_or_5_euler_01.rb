#!/usr/bin/env ruby

target = 1000
sum = 0

def isDivisibleByThree(number)
  return true if number % 3 == 0
end

def isDivisibleByFive(number)
  return true if number % 5 == 0
end

1.upto(target-1) do |x|
  # puts x
  if ((isDivisibleByFive(x)) || (isDivisibleByThree(x)))
    # puts x
    sum = sum + x
  end
end

puts "sum = #{sum}"

