#!/usr/bin/env ruby
###
# Amicable numbers
# Problem 21
###
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which
#  divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each
#  of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55
#  and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71
#  and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.
###

max = 10000
divisor_array = Array.new(10)
divisor_sums = Hash.new(0)

### populate divisor_array with proper divisors
2.upto(max) do |y|
  divisor_array[y] = ""
  1.upto(y/2) do |x|
    if y % x == 0
      # puts "---> x = #{x} & y = #{y}"
      divisor_array[y] << x.to_s
      divisor_array[y] << " "
    end
  end
  # puts
end

# puts
# puts divisor_array

### find d(n), the sum of the proper divisors
2.upto(max) do |z|
  # puts
  array_of_numbers = divisor_array[z].split(" ").map { |s| s.to_i }
  sum = 0
  0.upto(array_of_numbers.length - 1) do |x|
    # puts array_of_numbers[x]
    sum = sum + array_of_numbers[x]
  end
  divisor_sums[z] = sum
  # puts "d(#{z}) = #{sum},   where the proper divisors of #{z} are: #{divisor_array[z]} "
end

# puts
# 2.upto(max) do |z|
#   puts "d(#{z}) = #{divisor_sums[z]}" unless divisor_sums[z] == 1
# end

amicable_nums = Hash.new(0)

2.upto(max) do |x|
  (x+1).upto(max) do |y|
    unless divisor_sums[y] == 1
      if divisor_sums[x] == divisor_sums[y]
        # puts "d(#{x}) == d(#{y})"
        amicable_nums[x] = 1
        amicable_nums[y] = 1
      end
    end
  end
end

puts
sum_of_amicable_nums = 0
2.upto(max) do |x|
  if amicable_nums[x] == 1
    sum_of_amicable_nums = sum_of_amicable_nums + divisor_sums[x]
  end
end

puts
puts "sum of amicable nums = #{sum_of_amicable_nums}"
puts



