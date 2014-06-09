#!/usr/bin/env ruby
###
# Sum square difference
# Problem 6
###
# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
###

FIRST_X = 10

def find_dif_betw_square_of_sums_and_sum_of_squares(max)
  sum_of_squares = 0
  square = 0
  sum = 0
  square_of_sums = 0

  1.upto(max) do |x|
    square = (x)**2
    sum_of_squares = sum_of_squares + square
    sum = sum + x
  end

  square_of_sums = (sum)**2

  difference = square_of_sums - sum_of_squares
  return difference
end

puts "difference = #{find_dif_betw_square_of_sums_and_sum_of_squares(FIRST_X)}"
