#!/usr/bin/env ruby

def isPrime (number)
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
target = 2_000_000
# Sum of primes.
sum = 0

###
# Set up a hash to use to find primes
# using the Sieve of Eratosthenes.
###
primes = Hash.new
root_target = Math.sqrt(target).to_i
final = 0
# Zero out the hash values.
primes[1] = 0
primes[2] = 1
4.step(target,2) do |x|
  primes[x] = 0
end
# Store ones for every prime value.
3.step(target,2) do |x|
  primes[x] = 1
end
# Store zeros for the multiples of the prime values.
3.step(root_target,2) do |x|
  if isPrime(x)
    max = target/x
    2.upto(max) do |y|
      primes[x*y] = 0
    end
  end
end
###
# Sieve of Eratosthenes
# hash of primes now available.
###

# Add up the primes for output.
1.upto(target) do |x|
  if primes[x] == 1
    sum = sum + x
  end
end
puts
puts "sum of primes less than #{target}: #{sum}"



