#!/usr/bin/env ruby

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


smallest_multiple = 1
small_divisor = 2
large_divisor = 20

primes = Hash.new(0)

# Store all prime factors into a hash.  Key = prime; value = power
small_divisor.upto(large_divisor) do |x|
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

# Use the stored hash of prime factors and their powers to calculate the multiple.
smallest_multiple = find_factor_from_hash(primes, large_divisor)

puts smallest_multiple


