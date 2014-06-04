require_relative './minitest_helper.rb'
require_relative '../prime_factor_euler_03.rb'


class TestSmallestFactor < MiniTest::Test
  def test_simple_prime_number
    assert_equal 2, find_smallest_factor(2)
  end

  def test_non_prime_simple_square
    assert_equal 3, find_smallest_factor(9)
  end

  def test_non_prime_square_with_lesser_factor
    assert_equal 2, find_smallest_factor(18)
  end

  def test_non_prime_square_with_greater_factor
    assert_equal 3, find_smallest_factor(45)
  end

  def test_non_prime_simple_cube
    assert_equal 5, find_smallest_factor(125)
  end
end


class TestBiggestPrimeFactor < MiniTest::Test
  def test_simple_prime_number
    assert_equal 5, find_biggest_prime_factor(5)
  end

  def test_non_prime_number_containing_a_square
    assert_equal 3, find_biggest_prime_factor(12)
  end

  def test_non_prime_number_containing_a_cube
    assert_equal 3, find_biggest_prime_factor(24)
  end

  def test_euler_example
    assert_equal 29, find_biggest_prime_factor(13195)
  end

  def test_euler_challenge
    assert_equal 6857, find_biggest_prime_factor(600851475143)
  end
end


