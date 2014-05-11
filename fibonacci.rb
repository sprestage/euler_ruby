#!/usr/bin/env ruby

fib_sum = 0
fib_n_minus_two = 1
fib_n_minus_one = 1
fib_n = 0

until fib_n > 4_000_000
  fib_n = fib_n_minus_one + fib_n_minus_two
  fib_n_minus_two = fib_n_minus_one
  fib_n_minus_one = fib_n
  if fib_n_minus_two % 2 == 0
    # print "#{fib_n_minus_two} "
    fib_sum += fib_n_minus_two
  end
end

puts " = #{fib_sum}"
