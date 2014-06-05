#!/usr/bin/env ruby
###
# Smallest multiple
# Problem 5
###
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
###

def find_power (number, power)
  @result = 1
  return number if (number == 0) || (number == 1)
  return 1 if power == 0

  while power >= 1
    @result = @result * number
    power = power - 1
  end
  return @result
end

def is_prime (number)
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

def find_factor_from_hash(primes_hash, max)
  @multiple = 1
  2.upto(max) do |x|
    power = primes_hash[x]
    @multiple = @multiple * find_power(x, power)
  end
  return @multiple
end

def find_smallest_integer_evenly_divisible_by_1_to_max(max_divisor)

  smallest_multiple = 1
  min_divisor = 2
  # large_divisor = 20

  primes = Hash.new(0)

  # Store all prime factors into a hash.  Key = prime; value = power
  min_divisor.upto(max_divisor) do |x|
    if is_prime(x)
      primes[x] = 1
    else
      2.upto(x) do |y|
        count = 0
        while (x % y) == 0
          count = count + 1
          if count > primes[y]
            primes[y] = primes[y] + 1
          end
          x = x/y
        end
      end
    end
  end
  smallest_multiple = find_factor_from_hash(primes, max_divisor)
  return smallest_multiple
end

# Use the stored hash of prime factors and their powers to calculate the multiple.

print "The smallest positive number that is evenly divisible by all of the numbers from 1 to 10 is: "
puts find_smallest_integer_evenly_divisible_by_1_to_max(10)

print "The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is: "
puts find_smallest_integer_evenly_divisible_by_1_to_max(20)


