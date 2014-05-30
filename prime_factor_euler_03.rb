#!/usr/bin/env ruby
###
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
###

DEFAULT_TARGET = 13195
# DEFAULT_TARGET = 600851475143

def isPrime(number)
  if number == 1
    return true
  end
  2.upto(number) do |x|
    if (number % x == 0) && (number != x)
      return false
    end
  end
  return true
end

def findSmallestFactor(number)
  2.upto(number) do |x|
    if number % x == 0
      return x
    end
  end
  return number  ### Should only happen if prime.
end

def findBiggestPrimeFactor(number)
  if number == 1
    return 1
  end

  biggest_prime_factor = 1
  factor = 1

  while !isPrime(number)
    factor = findSmallestFactor(number)
    if factor > biggest_prime_factor
      biggest_prime_factor = factor
    end
    # puts "#{factor}, where #{number} / #{factor} is now #{number/factor}"
    number = number/factor
  end
  if number > biggest_prime_factor
    biggest_prime_factor = number
  end

  # puts "Biggest prime factor of #{number} = #{biggest_prime_factor}"
  return biggest_prime_factor
end


if ARGV.count > 0
  factor_this = ARGV[0].to_i
else
  factor_this = DEFAULT_TARGET
end

puts
biggest_factor = findBiggestPrimeFactor(factor_this)
puts
puts "Biggest prime factor of #{factor_this} = #{biggest_factor}"

### TEST
# Test what prime factors for 24; this tests for multiple of a prime.
# Test what prime factors for 5; this is a single prime number.
# Test what prime factors for 13195; this is the example given; should be 5, 7, 13, & 29.
