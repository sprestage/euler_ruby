require_relative './minitest_helper.rb'
require_relative '../fibonacci_euler_02.rb'

class TestFibonacci < MiniTest::Test
  def test_initial_fibonacci
    assert_equal 0, findXthFibonacciNumber(0)
  end

  def test_first_fibonacci
    assert_equal 1, findXthFibonacciNumber(1)
  end

  def test_second_fibonacci
    assert_equal 1, findXthFibonacciNumber(2)
  end

  def test_third_fibonacci
    assert_equal 2, findXthFibonacciNumber(3)
  end

  def test_fourth_fibonacci
    assert_equal 3, findXthFibonacciNumber(4)
  end

  def test_fifth_fibonacci
    assert_equal 5, findXthFibonacciNumber(5)
  end
end


class TestFib < MiniTest::Test
  def test_initial_fib
    assert_equal 0, fib(0)
  end

  def test_first_fib
    assert_equal 1, fib(1)
  end

  def test_second_fib
    assert_equal 1, fib(2)
  end

  def test_third_fib
    assert_equal 2, fib(3)
  end

  def test_fourth_fib
    assert_equal 3, fib(4)
  end

  def test_fifth_fib
    assert_equal 5, fib(5)
  end
end

