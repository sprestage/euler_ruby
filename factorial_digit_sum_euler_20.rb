#!/usr/bin/env ruby
###
# Factorial digit sum
# Problem 20
###
# n! means n × (n − 1) × ... × 3 × 2 × 1
#
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!
###


def find_factorial(n)
  factorial = 1
  n.downto(1) do |x|
    factorial = factorial * x
  end
  return factorial
end

def find_factorial_sum(n)
  sum = 0

  digit_string = find_factorial(n).to_s
  # digit_string = n.to_s
  0.upto((digit_string.length-1)) do |x|
    sum += digit_string[x].to_i
  end
  return sum
end

puts
print "Factorial of 100 is: "
puts find_factorial(100)
print "The sum of those digits is: "
puts find_factorial_sum(100)
puts
