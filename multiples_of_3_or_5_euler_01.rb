#!/usr/bin/env ruby
###
# Multiples of 3 and 5
# Problem 1
###
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
###

TARGET = 1000

def is_divisible_by_three(number)
  return true if number % 3 == 0
end

def is_divisible_by_five(number)
  return true if number % 5 == 0
end

def sum_of_multiples(number)
  sum = 0
  1.upto(number-1) do |x|
    # puts x
    if ((is_divisible_by_five(x)) || (is_divisible_by_three(x)))
      # puts x
      sum = sum + x
    end
  end
  return sum
end

puts "sum = #{sum_of_multiples(TARGET)}"

