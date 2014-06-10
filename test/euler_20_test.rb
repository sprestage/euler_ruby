require_relative './minitest_helper.rb'
require_relative '../factorial_digit_sum_euler_20.rb'

class TestFindFactorial < MiniTest::Test
  def test_find_factorial_euler_example
    assert_equal 3628800, find_factorial(10)
  end
end

class TestFindFactorialSum < MiniTest::Test
  def test_find_factorial_sum_euler_example
    assert_equal 27, find_factorial_sum(10)
  end

  def test_find_factorial_sum_euler_challenge
    assert_equal 648, find_factorial_sum(100)
  end
end
