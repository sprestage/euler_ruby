#!/usr/bin/env ruby
###
# Longest Collatz sequence
# Problem 14
###
# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
###

def next_even(number)
  return number/2
end

def next_odd(number)
  return ((3*number) + 1)
end

def find_chain_and_length(starting_number)
  # puts
  # print "#{starting_number}"
  chain_length = 1
  while starting_number != 1
    if starting_number % 2 == 0
      starting_number = next_even(starting_number)
    else
      starting_number = next_odd(starting_number)
    end
    # print " -> #{starting_number}"
    chain_length = chain_length + 1
  end
  # print " (#{chain_length})"
  return chain_length
end


max_starting_number = 1_000_000
current_term = 13
longest_chain_length = 1
length = 0
longest_source = 0

1.upto(max_starting_number-1) do |x|
  length = find_chain_and_length(x)
  if longest_chain_length < length
    longest_chain_length = length
    longest_source = x
    # puts "longest is now #{longest_chain_length}, from starting = #{x}"
  end
end
puts
puts "longest_chain_length = #{longest_chain_length}"
puts "longest_source = #{longest_source}"

