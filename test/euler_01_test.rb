require_relative './minitest_helper.rb'
require_relative '../multiples_of_3_or_5_euler_01.rb'

class TestDivisibleByThree < MiniTest::Test
  def test_is_zero_divisible_by_three
    assert_equal true, isDivisibleByThree(0)
  end

  def test_is_one_divisible_by_three
    assert_equal true, !isDivisibleByThree(1)
  end

  def test_is_two_divisible_by_three
    assert_equal true, !isDivisibleByThree(2)
  end

  def test_is_three_divisible_by_three
    assert_equal true, isDivisibleByThree(3)
  end

  def test_is_five_divisible_by_three
    assert_equal true, !isDivisibleByThree(5)
  end

  def test_is_square_of_three_divisible_by_three
    assert_equal true, isDivisibleByThree(9)
  end

  def test_is_fifteen_divisible_by_three
    assert_equal true, isDivisibleByThree(15)
  end
end


class TestDivisibleByFive < MiniTest::Test
  def test_is_zero_divisible_by_five
    assert_equal true, isDivisibleByFive(0)
  end

  def test_is_one_divisible_by_five
    assert_equal true, !isDivisibleByFive(1)
  end

  def test_is_two_divisible_by_five
    assert_equal true, !isDivisibleByFive(2)
  end

  def test_is_three_divisible_by_five
    assert_equal true, !isDivisibleByFive(3)
  end

  def test_is_five_divisible_by_five
    assert_equal true, isDivisibleByFive(5)
  end

  def test_is_fifteen_divisible_by_five
    assert_equal true, isDivisibleByFive(15)
  end

  def test_is_square_of_five_divisible_by_five
    assert_equal true, isDivisibleByFive(25)
  end
end


class TestSumOfMultiples < MiniTest::Test
  def test_sum_of_all_multiples_of_3_or_5_below_10
    assert_equal 23, sumOfMultiples(10)
  end

  def test_sum_of_all_multiples_of_3_or_5_below_10
    assert_equal 233168, sumOfMultiples(1000)
  end
end



