#!/usr/bin/env ruby
###
# Counting Sundays
# Problem 19
###
# You are given the following information, but you may prefer to do some research for yourself.

#   1 Jan 1900 was a Monday.
#   Thirty days has September,
#   April, June and November.
#   All the rest have thirty-one,
#   Saving February alone,
#   Which has twenty-eight, rain or shine.
#   And on leap years, twenty-nine.
#   A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
###

def is_day_number_a_sunday(number)
  # where 1 is '1 Jan 1900'
  # and 2 is '2 Jan 1900'
  return true if (number + 7) % 7 == 0
  return false
end

def is_leap_year(year)
  # A leap year occurs
  #     ...on any year evenly div by 4
  #     ...but not on a century
  #     ...unless century is evenly div by 400
  if year % 4 == 0
    if year % 100 == 0
      if year % 400 == 0
        return true
      end
    else
      return true
    end
  end
  return false
end

def how_many_days_in_year(year)
  days = 0

  #count all the 30 days: Sep, Apr, Jun, Nov
  days = days + 30 + 30 + 30 + 30
  #count all the 31 days: Jan, Mar, May, Jul, Aug, Oct, Dec
  days = days + 31 + 31 + 31 + 31 + 31 + 31 + 31
  #count the February days
  #  all Febs have 28
  days = days + 28
  #  some have 29 if leap year
  days = days+1 if is_leap_year(year)

  return days
end

def how_many_days_in_month(month)
  case month
  when 1, 3, 5, 7, 8, 10, 12
    return 31
  when 4, 6, 9, 11
    return 30
  else
    return 28
  end
end

def find_day_number(year, month, day)
  counting_days = 0

  # count the days of any full years preceeding
  1900.upto(year-1) do |x|
    counting_days = counting_days + how_many_days_in_year(x)
  end

  # count the days of any full months preceeding
  1.upto(month-1) do |x|
    counting_days = counting_days + how_many_days_in_month(x)
    if (x == 2) && (is_leap_year(year))
      counting_days += 1
    else
    end
  end

  # count the remaining days
  counting_days += day

  return counting_days
end

def count_sundays(year, month)
  count = 0
  1901.upto(year) do |y|
    1.upto(month) do |m|
      count +=1 if is_day_number_a_sunday(find_day_number(y,m,1))
    end
  end

  return count
end

puts
puts "There are #{count_sundays(2000,12)} Sundays that fall on the first of the month."
puts
