#!/usr/bin/env ruby
###
# Special Pythagorean triplet
# Problem 9
###
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
###

target = 1000

a = 1
b = 1
c = 1
count = 0

puts
1.upto(target/3) do |x|
  a = x
  (x+1).upto(target/2) do |y|
    b = y
    c = target - a - b
    break if b >= c
    if c == c.round
      if (c**2 == a**2 + b**2) && (a < b) && (b < c)
        puts "  #{a} + #{b} + #{c} = #{target}"
        puts "AND"
        puts "  #{a}**2 + #{b}**2 = #{c}**2"
        puts "AND"
        puts "  #{a**2} + #{b**2} = #{c**2}"
        puts "AND"
        puts " #{a} < #{b} < #{c}"
        puts
        puts "The product of abc is: #{a*b*c}."
      end
    end
  end
end

