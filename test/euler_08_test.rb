require_relative './minitest_helper.rb'
require_relative '../largest_product_in_series_euler_08.rb'

class TestFindLargestProduct < MiniTest::Test
  def test_euler_example
    # assert_equal true, true
    assert_equal 5832, find_largest_product_in_string(4)
  end

  def test_euler_challenge
    assert_equal 40824, find_largest_product_in_string(13)
  end

  def test_euler_theoretical_corrected_challenge_answer
    assert_equal 23514624000, find_largest_product_in_string(13)
  end
end
