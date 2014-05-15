#!/usr/bin/env ruby

def isPrime (number)
  if number == 1
    return 1
  end
  2.upto(number) do |x|
    if (number % x == 0) && (number != x)
      return 0
    end
  end
  return 1
end

goal = 10_001
n = 200_000
primes = Hash.new
root_n = Math.sqrt(n).to_i
final = 0

primes[1] = 0
primes[2] = 1
4.step(n,2) do |x|
  primes[x] = 0
end

3.step(n,2) do |x|
  primes[x] = 1
end


3.step(root_n,2) do |x|
  if isPrime(x) == 1
    max = n/x
    2.upto(max) do |y|
      primes[x*y] = 0
    end
  end
end

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

