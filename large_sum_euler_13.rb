#!/usr/bin/env ruby
###
# Large sum
# Problem 13
###
# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
###

MAX = 100

a = Array.new(MAX)
count = 0
sum = 0
sumString = ""

File.open("large_sum_euler_13.txt", "r") do |f|
  f.each_line do |line|
    line = line.gsub(/\n/,"").to_i
    # puts line
    a[count] = line
    count = count + 1
  end
end

0.upto(MAX-1) do |x|
  # puts a[x]
  sum = sum + a[x]
end

puts
puts "full sum = #{sum}"
sumString = sum.to_s

puts
puts "first 10 digits of the sum are:"
0.upto(10-1) do |x|
  print "#{sumString[x]}"
end
puts

