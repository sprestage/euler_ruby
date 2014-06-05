require_relative './minitest_helper.rb'
require_relative '../smallest_multiple_euler_05.rb'


class TestSmallestMultiple < MiniTest::Test
  def test_euler_example
    assert_equal 2520, find_smallest_integer_evenly_divisible_by_1_to_max(10)
  end

  def test_euler_challenge
    assert_equal 232792560, find_smallest_integer_evenly_divisible_by_1_to_max(20)
  end
end

class TestFindPower < MiniTest::Test
  def test_find_power
    assert_equal 32, find_power(2, 5)
    assert_equal 25, find_power(5, 2)
  end
end


