#!/usr/bin/env ruby

sum_of_squares = 0
square = 0
sum = 0
square_of_sums = 0

1.upto(100) do |x|
  square = (x)**2
  sum_of_squares = sum_of_squares + square
  sum = sum + x
end

square_of_sums = (sum)**2

difference = square_of_sums - sum_of_squares

puts "difference = #{difference}"
