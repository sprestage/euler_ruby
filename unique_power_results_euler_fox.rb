#!/usr/bin/env ruby
###
# Unique power results
# Problem fox
###
# Take each number, 2 through 100.  Raise each number to the power of 2 through 100.  Find the unique power results.
# If we take each number, 2 through 3.  Raise each number to the power of 2 through 3.  The resulting numbers would be 4(2*2), 8(2*3), 16(2*4), 9(3*2), 27(3*3), 81(3*4), 16(4*2), 64(4*3), 256(4*4)
# The array of results would be [4, 8, 16, 9, 27, 81, 16, 64, 256]
# The array of unique results would be [4, 8, 16, 9, 27, 81, 64, 256]
#
# Find the unique power results for 2 through 100 to the power of 2 through 100.
###

TARGET = 10

2.upto(TARGET) do |x|
  puts x
  puts x ** 1

  puts (x * x)
  puts x ** 2

  puts (x * x * x)
  puts x ** 3
  puts
end

@power_results_hash = Hash.new(0)

2.upto(TARGET) do |x|
  1.upto(TARGET) do |y|
    @n = x**y
    @power_results_hash[@n] = @power_results_hash[@n] + 1
    # print "#{x} ** #{y} = "
    # puts x**y
    # puts
  end
end

2.upto(TARGET) do |x|
  1.upto(TARGET) do |y|
    @n = x**y
    if @power_results_hash[@n] == 1
      puts "Unique power result for #{x}**#{y}= #{@n}"
    end
  end
end
