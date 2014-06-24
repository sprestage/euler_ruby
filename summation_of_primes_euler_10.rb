#!/usr/bin/env ruby
###
# Summation of primes
# Problem 10
###
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
###
# include implementations of is_prime, set_up_seive_of_eratosthenes, count_primes, & find_prime
require_relative './10001st_prime_euler_07.rb'

target = 2_000_000

def sum_of_primes(size)
  @sum = 0
  @primes = Hash.new(0)
  @primes = set_up_sieve_of_eratosthenes(@primes, size)

  1.upto(size) do |x|
    if @primes[x] == 1
      @sum = @sum + x
    end
  end
  return @sum
end

puts
puts "sum of primes less than #{target}: #{sum_of_primes(target)}"



