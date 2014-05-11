#!/usr/bin/env ruby

fib_sum = 0
fib_n = 1
fib_n_plus_one = 2
fib_n_plus_two = 0

puts fib_n
puts fib_n_plus_one

until fib_n_plus_two > 40_000_000
  fib_n_plus_two = fib_n + fib_n_plus_one
  fib_n = fib_n_plus_one
  fib_n_plus_one = fib_n_plus_two
  puts fib_n_plus_two
end
