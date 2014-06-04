#!/usr/bin/env ruby

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

# Find first 10_001 primes.
goal = 10_001
# Try all integers up to 200_000.
n = 200_000
# Set up a hash to use to find primes using the Sieve of Eratosthenes.
primes = Hash.new
root_n = Math.sqrt(n).to_i
final = 0

# Zero out the hash values.  Sieve, step #1
primes[1] = 0
primes[2] = 1
4.step(n,2) do |x|
  primes[x] = 0
end

# Store ones for every prime value.  Sieve, step #2
3.step(n,2) do |x|
  primes[x] = 1
end

# Store zeros for the multiples of the prime values.  Sieve, step #3
3.step(root_n,2) do |x|
  if is_prime(x)
    max = n/x
    2.upto(max) do |y|
      primes[x*y] = 0
    end
  end
end

# Hash is ready, now count the primes.
count = 0
1.upto(n) do |x|
  if primes[x] == 1
    count = count + 1
    print "   #{x}"
    puts if count % 10 == 0
    if count >= goal
      final = x
      break
    end
  end
end
puts
puts "The #{count}st prime number is #{final}"

