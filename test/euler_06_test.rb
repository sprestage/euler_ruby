require_relative './minitest_helper.rb'
require_relative '../sum_square_difference_euler_06.rb'

class TestFindDifBetwSquareOfSumsAndSumOfSquares < MiniTest::Test
  def test_euler_example
    assert_equal 2640, find_dif_betw_square_of_sums_and_sum_of_squares(10)
  end

  def test_euler_challenge
    assert_equal 25164150, find_dif_betw_square_of_sums_and_sum_of_squares(100)
  end
end
