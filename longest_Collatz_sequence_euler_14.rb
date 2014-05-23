#!/usr/bin/env ruby

def nextEven(number)
  return number/2
end

def nextOdd(number)
  return ((3*number) + 1)
end

def findChainAndLength(starting_number)
  # puts
  # print "#{starting_number}"
  chain_length = 1
  while starting_number != 1
    if starting_number % 2 == 0
      starting_number = nextEven(starting_number)
    else
      starting_number = nextOdd(starting_number)
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
  length = findChainAndLength(x)
  if longest_chain_length < length
    longest_chain_length = length
    longest_source = x
    # puts "longest is now #{longest_chain_length}, from starting = #{x}"
  end
end
puts
puts "longest_chain_length = #{longest_chain_length}"
puts "longest_source = #{longest_source}"

