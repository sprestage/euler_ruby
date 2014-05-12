#!/usr/bin/env ruby

def findBiggestPrimeFactor (number)
  biggest_prime_factor = 1

  if number == 1
    return 1
  end

  puts "Prime factors of #{number} are: "

  prime_factors = []

  2.upto(number) do |x|
    if number % x == 0
      if x > biggest_prime_factor
        biggest_prime_factor = x
      end
      puts "#{x}, where #{number} / #{x} is now #{number/x}"
      prime_factors.push(x)
      if number / x == 1
        return 1
      else
        number = number / x
      end
    end
  end

  puts "Biggest prime factor = #{biggest_prime_factor}"
end

# factor_this = 13195
factor_this = 600851475143

findBiggestPrimeFactor(factor_this)
