require_relative './minitest_helper.rb'
require_relative '../fibonacci_euler_02.rb'

class TestFibonacci < MiniTest::Test
  def test_initial_fibonacci
    assert_equal 0, find_xth_fibonacci_number(0)
  end

  def test_first_fibonacci
    assert_equal 1, find_xth_fibonacci_number(1)
  end

  def test_second_fibonacci
    assert_equal 1, find_xth_fibonacci_number(2)
  end

  def test_third_fibonacci
    assert_equal 2, find_xth_fibonacci_number(3)
  end

  def test_fourth_fibonacci
    assert_equal 3, find_xth_fibonacci_number(4)
  end

  def test_fifth_fibonacci
    assert_equal 5, find_xth_fibonacci_number(5)
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

class TestSolutions < MiniTest::Test
  def test_first_solution_sum_of_even_fib_under_10_small_example
    assert_equal 10, first_find_sum_of_even_fibonacci_terms_under(10)
  end

  def test_second_solution_sum_of_even_fib_under_10_small_example
    assert_equal 10, second_find_sum_of_even_fibonacci_terms_under(10)
  end

  def test_third_solution_sum_of_even_fib_under_10_small_example
    assert_equal 10, third_find_sum_of_even_fibonacci_terms_under(10)
  end

  def test_first_solution_sum_of_even_fib_under_4million_euler_challenge
    assert_equal 4613732, first_find_sum_of_even_fibonacci_terms_under(4_000_000)
  end

  def test_second_solution_sum_of_even_fib_under_4million_euler_challenge
    assert_equal 4613732, second_find_sum_of_even_fibonacci_terms_under(4_000_000)
  end

  def test_third_solution_sum_of_even_fib_under_4million_euler_challenge
    assert_equal 4613732, third_find_sum_of_even_fibonacci_terms_under(4_000_000)
  end
end
