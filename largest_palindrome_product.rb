#!/usr/bin/env ruby

smallest_three_digit = 100
largest_three_digit = 999

largest_palindrome_product = 0
first_digit_from_largest_product = 0
second_digit_from_largest_product = 0

def isPalindrome(number)
  palindrome_string = number.to_s
  palindrome_array = palindrome_string.split("")
  palindrome_length = (palindrome_string.length) - 1

  if palindrome_length == 0
    return 0
  end

  still_palindrome = 1

  0.upto(palindrome_length / 2) do |x|
    y = palindrome_length - x
    if palindrome_array[x] != palindrome_array[y]
      still_palindrome = 0
    end
  end

  return still_palindrome
end

largest_three_digit.downto(smallest_three_digit) do |x|
  x.downto(smallest_three_digit) do |y|
    product = x*y
    if isPalindrome(product) == 1
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

