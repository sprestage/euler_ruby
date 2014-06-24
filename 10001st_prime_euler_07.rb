#!/usr/bin/env ruby
###
# 10001st prime
# Problem 7
###
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
###
# Code now optimized to run everything as a method, thus enabling
# user to find ANY given prime.  Code also runs even faster, since
# the size of the Sieve of Erotosthenes has been optimized and
# increases in size only as needed.  No more super huge, mostly
# unused Sieve hashes.
###

def is_prime(number)
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

def set_up_sieve_of_eratosthenes(eratos_hash, size)
  @n = size
  @root_n = Math.sqrt(@n).to_i

  # Zero out the hash values.  Sieve, step #1
  eratos_hash[1] = 0
  eratos_hash[2] = 1
  4.step(@n,2) do |x|
    eratos_hash[x] = 0
  end

  # Store ones for every prime value.  Sieve, step #2
  3.step(@n,2) do |x|
    eratos_hash[x] = 1
  end

  # Store zeros for the multiples of the prime values.  Sieve, step #3
  3.step(@root_n,2) do |x|
    if is_prime(x)
      max = @n/x
      2.upto(max) do |y|
        eratos_hash[x*y] = 0
      end
    end
  end
  return eratos_hash
end

# # Find first 10_001 primes.
# goal = 10_001
# # Try all integers up to 200_000.
# n = 200_000

# # Set up a hash to use to find primes using the Sieve of Eratosthenes.
# primes = Hash.new
# final = 0

# primes = set_up_sieve_of_eratosthenes(primes, n)

def count_primes(primes_hash, hash_size)
  # @size = primes_hash.size
  @size = hash_size
  @goal = 10_001
  @final = 0
  @count = 0
  1.upto(@size) do |x|
    if primes_hash[x] == 1
      @count = @count + 1
      # puts @count
      # puts "   #{x}"
    end
  end
  return @count
end

def find_prime(number)
  @count = 0
  @the_prime = 0
  @hash_size = 10*number
  @hash = Hash.new(0)

  until @count > number
    @hash = set_up_sieve_of_eratosthenes(@hash, @hash_size)
    @count = count_primes(@hash, @hash_size)
    @hash_size = 2 * @hash_size
  end

  count = 0
  2.upto(@hash_size) do |x|
    if count < number
      if @hash[x] == 1
        # print "--->"
        # puts x
        count = count + 1
      end
    else
      return (x-1)
    end
  end
end

puts
puts "The 6'th prime number is #{find_prime(6)}."
puts
puts "The 10001'th prime number is #{find_prime(10001)}."
puts
