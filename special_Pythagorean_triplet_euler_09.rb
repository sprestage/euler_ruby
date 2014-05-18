#!/usr/bin/env ruby

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

