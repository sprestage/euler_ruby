#!/usr/bin/env ruby
###
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
###

TARGET = 1000

def isDivisibleByThree(number)
  return true if number % 3 == 0
end

def isDivisibleByFive(number)
  return true if number % 5 == 0
end

def sumOfMultiples(number)
  sum = 0
  1.upto(number-1) do |x|
    # puts x
    if ((isDivisibleByFive(x)) || (isDivisibleByThree(x)))
      # puts x
      sum = sum + x
    end
  end
  return sum
end

puts "sum = #{sumOfMultiples(TARGET)}"

