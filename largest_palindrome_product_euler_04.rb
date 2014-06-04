#!/usr/bin/env ruby
###
# Largest palindrome product
# Problem 4
###
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
###

smallest_three_digit = 100
largest_three_digit = 999

largest_palindrome_product = 0
first_digit_from_largest_product = 0
second_digit_from_largest_product = 0

def is_palindrome(number)
  palindrome_string = number.to_s
  palindrome_array = palindrome_string.split("")
  palindrome_midpoint = ((palindrome_string.length) - 1) / 2

  if palindrome_string.length <= 1
    return true
  end

  still_palindrome = true

  0.upto(palindrome_midpoint) do |x|
    y = palindrome_string.length - x - 1
    if palindrome_array[x] != palindrome_array[y]
      still_palindrome = false
    end
  end

  return still_palindrome
end

largest_three_digit.downto(smallest_three_digit) do |x|
  x.downto(smallest_three_digit) do |y|
    product = x*y
    if is_palindrome(product) == true
      if product > largest_palindrome_product
        largest_palindrome_product = product
        first_digit_from_largest_product = x
        second_digit_from_largest_product = y
      end
    end
  end
end

puts
puts "The largest palindrome made from the product of two 3-digit numbers"
puts "is:  #{largest_palindrome_product} = #{first_digit_from_largest_product} * #{second_digit_from_largest_product}."

