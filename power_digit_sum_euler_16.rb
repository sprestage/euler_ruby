#!/usr/bin/env ruby

target_power = 1000
power_total = 1
digit_sum = 0
power_total_string = ""

1.upto(target_power) do |x|
  power_total = power_total * 2
  # puts "2^#{x} = #{power_total}"
end

# puts
# puts "2^#{target_power} = #{power_total}"
# puts

0.upto(power_total.to_s.length - 1) do |x|
  # puts power_total%10
  digit_sum = digit_sum + power_total%10
  power_total = power_total/10
  # puts digit_sum
end

puts "sum of the digits of x^#{target_power} = #{digit_sum}"
