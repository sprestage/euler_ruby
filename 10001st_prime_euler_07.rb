#!/usr/bin/env ruby

goal = 10001

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

num = 1
count = 0

until count == goal
  num = num + 1
  if isPrime(num) == 1
    count = count + 1
  end
end

puts "##{count} prime = #{num}"
