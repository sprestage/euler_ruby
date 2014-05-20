#!/usr/bin/env ruby

biggest_product_of_four = 0

biggest_row_product = 0
biggest_column_product = 0
biggest_diagonal_product = 0
biggest_reverse_d_product = 0
biggest_forward_d_product = 0

current_product = 0

a = Array.new(20) { Array.new(20, 0) }
a[0] = "08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08".split(" ").map { |s| s.to_i }
a[1] = "49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00".split(" ").map { |s| s.to_i }
a[2] = "81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65".split(" ").map { |s| s.to_i }
a[3] = "52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91".split(" ").map { |s| s.to_i }
a[4] = "22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80".split(" ").map { |s| s.to_i }
a[5] = "24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50".split(" ").map { |s| s.to_i }
a[6] = "32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70".split(" ").map { |s| s.to_i }
a[7] = "67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21".split(" ").map { |s| s.to_i }
a[8] = "24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72".split(" ").map { |s| s.to_i }
a[9] = "21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95".split(" ").map { |s| s.to_i }
a[10] = "78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92".split(" ").map { |s| s.to_i }
a[11] = "16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57".split(" ").map { |s| s.to_i }
a[12] = "86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58".split(" ").map { |s| s.to_i }
a[13] = "19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40".split(" ").map { |s| s.to_i }
a[14] = "04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66".split(" ").map { |s| s.to_i }
a[15] = "88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69".split(" ").map { |s| s.to_i }
a[16] = "04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36".split(" ").map { |s| s.to_i }
a[17] = "20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16".split(" ").map { |s| s.to_i }
a[18] = "20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54".split(" ").map { |s| s.to_i }
a[19] = "01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48".split(" ").map { |s| s.to_i }

# 0.upto(19) do |x|
#   0.upto(19) do |y|
#     print "#{a[x][y].to_s.rjust(2, '0')} "
#   end
#   puts
# end

# puts

###
# check the rows
0.upto(19) do |x|
  0.upto(16) do |y|
    current_product = a[x][y] * a[x][y+1] * a[x][y+2] * a[x][y+3]
    # puts "#{x},#{y}: #{a[x][y]} * #{a[x][y+1]} * #{a[x][y+2]} * #{a[x][y+3]} = #{current_product}"
    biggest_row_product = current_product if current_product > biggest_row_product
  end
end

###
# check the columns
0.upto(19) do |y|
  0.upto(16) do |x|
    current_product = a[x][y] * a[x+1][y] * a[x+2][y] * a[x+3][y]
    # puts "#{x},#{y}: #{a[x][y]} * #{a[x+1][y]} * #{a[x+2][y]} * #{a[x+3][y]} = #{current_product}"
    biggest_column_product = current_product if current_product > biggest_column_product
  end
end

###
# check the backslash diagonals
0.upto(16) do |x|
  0.upto(16) do |y|
    current_product = a[x][y] * a[x+1][y+1] * a[x+2][y+2] * a[x+3][y+3]
    # puts "#{x},#{y}: #{a[x][y]} * #{a[x+1][y+1]} * #{a[x+2][y+2]} * #{a[x+3][y+3]} = #{current_product}"
    biggest_reverse_d_product = current_product if current_product > biggest_reverse_d_product
  end
end

###
# check the forwardslash diagonals
0.upto(16) do |x|
  0.upto(16) do |y|
    current_product = a[x][y+3] * a[x+1][y+2] * a[x+2][y+1] * a[x+3][y]
    # puts "#{x},#{y+3}: #{a[x][y+3]} * #{a[x+1][y+2]} * #{a[x+2][y+1]} * #{a[x+3][y]} = #{current_product}"
    biggest_forward_d_product = current_product if current_product > biggest_forward_d_product
  end
end

puts


if biggest_row_product > biggest_product_of_four
  biggest_product_of_four = biggest_row_product
end

if biggest_column_product > biggest_product_of_four
  biggest_product_of_four = biggest_column_product
end

if biggest_reverse_d_product > biggest_product_of_four
  biggest_product_of_four = biggest_reverse_d_product
end

if biggest_forward_d_product > biggest_product_of_four
  biggest_product_of_four = biggest_forward_d_product
end

# puts
# puts "biggest_row_product               = #{biggest_row_product}"
# puts "biggest_column_product            = #{biggest_column_product}"
# puts "biggest_reverse_diagonal_product  = #{biggest_reverse_d_product}"
# puts "biggest_forward_diagonal_product  = #{biggest_forward_d_product}"


# puts
puts "biggest product of four = #{biggest_product_of_four}"



