#!/usr/bin/env ruby

smallest_multiple = 1

divisor_start = 2
divisor_finish = 20
DEBUG = FALSE

def isPrime (number)
  puts "number = #{number}" if DEBUG
  if number == 1
    return 1
  end

  2.upto(number) do |x|
    puts "x = #{x}" if DEBUG
    if (number % x == 0) && (number != x)
      puts "      #{number} is NOT prime" if DEBUG
      return 0
    end
  end
  puts "      #{number} is prime" if DEBUG
  return 1
end


def listPrimesUpTo(number)
  2.upto(number) do |x|
    if isPrime(x) != 0
      puts x
    end
  end
end

def productOfPrimes(number)
  finalProduct = 1
  2.upto(number) do |x|
    if isPrime(x) == 1
      finalProduct = finalProduct * x
    end
  end
  puts finalProduct if DEBUG
  return finalProduct
end

def findNextMultiple(current_multiple, current_divisor)
  # puts "   Call findNextMultiple on #{current_multiple} and #{current_divisor}"
  multiple = current_multiple + 1
  current_divisor.downto(2) do |z|
    if multiple % z != 0
      multiple = multiple + 1
      z = current_divisor
    end
  end
  # puts "      findNextMultiple Returns multiple = #{multiple}"
  return multiple
end

def areAllOfTheseDivisors(multiple, highest_divisor)
  # puts "   Call areAllOfTheseDivisors on #{multiple} and #{highest_divisor}"
  highest_divisor.downto(2) do |y|
    if multiple % y != 0
      # puts "      Returns 0: meaning #{highest_divisor} is not a divisor of #{multiple}."
      return 0
    end
  end
  # puts "      Returns 1: meaning #{multiple} ... #{highest_divisor} are all divisors of #{multiple}"
  return 1
end

target = divisor_finish
listPrimesUpTo(target)

initial_product = productOfPrimes(target)

puts initial_product
puts
puts
puts
smallest_multiple = initial_product

until areAllOfTheseDivisors(smallest_multiple, divisor_finish) == 1
  # puts
  divisor_finish.downto(divisor_start) do |x|
    # puts
    # puts "x = #{x}"
    if areAllOfTheseDivisors(smallest_multiple, x) == 1
      # puts "smallest_multiple is still #{smallest_multiple}"
    else
      multiple_of_x = findNextMultiple(smallest_multiple, x)
      # puts "multiple_of_x = #{multiple_of_x}"
      if multiple_of_x > smallest_multiple
        smallest_multiple = multiple_of_x
        # puts "smallest_multiple = #{smallest_multiple}"
      end
    end
  end
end
# puts

puts "Final answer: Smallest multiple is #{smallest_multiple}"

