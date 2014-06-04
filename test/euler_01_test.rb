require_relative './minitest_helper.rb'
require_relative '../multiples_of_3_or_5_euler_01.rb'

class TestDivisibleByThree < MiniTest::Test
  def test_is_zero_divisible_by_three
    assert_equal true, is_divisible_by_three(0)
  end

  def test_is_one_divisible_by_three
    assert_equal true, !is_divisible_by_three(1)
  end

  def test_is_two_divisible_by_three
    assert_equal true, !is_divisible_by_three(2)
  end

  def test_is_three_divisible_by_three
    assert_equal true, is_divisible_by_three(3)
  end

  def test_is_five_divisible_by_three
    assert_equal true, !is_divisible_by_three(5)
  end

  def test_is_square_of_three_divisible_by_three
    assert_equal true, is_divisible_by_three(9)
  end

  def test_is_fifteen_divisible_by_three
    assert_equal true, is_divisible_by_three(15)
  end
end


class TestDivisibleByFive < MiniTest::Test
  def test_is_zero_divisible_by_five
    assert_equal true, is_divisible_by_five(0)
  end

  def test_is_one_divisible_by_five
    assert_equal true, !is_divisible_by_five(1)
  end

  def test_is_two_divisible_by_five
    assert_equal true, !is_divisible_by_five(2)
  end

  def test_is_three_divisible_by_five
    assert_equal true, !is_divisible_by_five(3)
  end

  def test_is_five_divisible_by_five
    assert_equal true, is_divisible_by_five(5)
  end

  def test_is_fifteen_divisible_by_five
    assert_equal true, is_divisible_by_five(15)
  end

  def test_is_square_of_five_divisible_by_five
    assert_equal true, is_divisible_by_five(25)
  end
end


class TestSumOfMultiples < MiniTest::Test
  def test_sum_of_all_multiples_of_3_or_5_below_10_euler_example
    assert_equal 23, sum_of_multiples(10)
  end

  def test_sum_of_all_multiples_of_3_or_5_below_1000_euler_challenge
    assert_equal 233168, sum_of_multiples(1000)
  end
end



