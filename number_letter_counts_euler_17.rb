#!/usr/bin/env ruby
###
# Number letter counts
# Problem 17
###
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
###

target = 1000
number_letter_count = 0

def print_number(number, prefix="")
  number_spellings = Hash.new
  spelling_counts = Hash.new

  number_spellings[0] = ""
  number_spellings[1] = "one"
  number_spellings[2] = "two"
  number_spellings[3] = "three"
  number_spellings[4] = "four"
  number_spellings[5] = "five"
  number_spellings[6] = "six"
  number_spellings[7] = "seven"
  number_spellings[8] = "eight"
  number_spellings[9] = "nine"
  number_spellings[10] = "ten"
  number_spellings[11] = "eleven"
  number_spellings[12] = "twelve"
  number_spellings[13] = "thirteen"
  number_spellings[14] = "fourteen"
  number_spellings[15] = "fifteen"
  number_spellings[16] = "sixteen"
  number_spellings[17] = "seventeen"
  number_spellings[18] = "eighteen"
  number_spellings[19] = "nineteen"
  number_spellings[20] = "twenty"
  number_spellings[30] = "thirty"
  number_spellings[40] = "forty"
  number_spellings[50] = "fifty"
  number_spellings[60] = "sixty"
  number_spellings[70] = "seventy"
  number_spellings[80] = "eighty"
  number_spellings[90] = "ninety"
  number_spellings[100] = "hundred"
  number_spellings[1000] = "thousand"

  0.upto(20) do |x|
    spelling_counts[x] = number_spellings[x].length
  end

  30.step(100,10) do |x|
    spelling_counts[x] = number_spellings[x].length
  end

  spelling_counts[1000] = number_spellings[1000].length

  case number
  when 1..19
    return spelling_counts[number]
  when 20..29
    return spelling_counts[20] + spelling_counts[number-20]
  when 30..39
    return spelling_counts[30] + spelling_counts[number-30]
  when 40..49
    return spelling_counts[40] + spelling_counts[number-40]
  when 50..59
    return spelling_counts[50] + spelling_counts[number-50]
  when 60..69
    return spelling_counts[60] + spelling_counts[number-60]
  when 70..79
    return spelling_counts[70] + spelling_counts[number-70]
  when 80..89
    return spelling_counts[80] +  spelling_counts[number-80]
  when 90..99
    return spelling_counts[90] + spelling_counts[number-90]
  when 100,1000
    return spelling_counts[prefix] + spelling_counts[number]
  else
    puts "ERROR"
  end
end

counted_letters = 0
number_string = ""

if target < 100
  1.upto(target) do |x|
    number_letter_count = number_letter_count + print_number(x)
  end
end

if target > 99
  1.upto(99) do |x|
    number_letter_count = number_letter_count + print_number(x)
  end
end

if target > 99
  1.upto((target/100) - 1) do |y|
    number_letter_count = number_letter_count + print_number(100,y)
    1.upto(99) do |z|
      number_letter_count = number_letter_count + print_number(100, y)
      number_letter_count = number_letter_count + 3  #account for 'and'
      number_letter_count = number_letter_count + print_number(z)
    end
  end

  if target % 1000 == 0
    number_letter_count = number_letter_count + print_number(1000,target/1000)
  else
    number_letter_count = number_letter_count + print_number(100,target/100)
  end

  1.upto(target%100) do |x|
    number_letter_count = number_letter_count + print_number(100, target/100)
    number_letter_count = number_letter_count + 3 unless target % 100 == 0  #account for 'and'
    number_letter_count = number_letter_count + print_number(x)
  end
end

puts
puts "number_letter_count = #{number_letter_count}"






