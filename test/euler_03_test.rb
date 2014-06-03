require_relative './minitest_helper.rb'
require_relative '../prime_factor_euler_03.rb'


class TestSmallestFactor < MiniTest::Test
  def test_simple_prime_number
    assert_equal 2, findSmallestFactor(2)
  end

  def test_non_prime_simple_square
    assert_equal 3, findSmallestFactor(9)
  end

  def test_non_prime_square_with_lesser_factor
    assert_equal 2, findSmallestFactor(18)
  end

  def test_non_prime_square_with_greater_factor
    assert_equal 3, findSmallestFactor(45)
  end

  def test_non_prime_simple_cube
    assert_equal 5, findSmallestFactor(125)
  end
end


class TestBiggestPrimeFactor < MiniTest::Test
  def test_simple_prime_number
    assert_equal 5, findBiggestPrimeFactor(5)
  end

  def test_non_prime_number_containing_a_square
    assert_equal 3, findBiggestPrimeFactor(12)
  end

  def test_non_prime_number_containing_a_cube
    assert_equal 3, findBiggestPrimeFactor(24)
  end

  def test_euler_example
    assert_equal 29, findBiggestPrimeFactor(13195)
  end
end


