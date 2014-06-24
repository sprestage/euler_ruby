require_relative './minitest_helper.rb'
require_relative '../summation_of_primes_euler_10.rb'

class TestFindSumOfPrimesBelowX < MiniTest::Test
  def test_euler_example
    assert_equal 17, sum_of_primes(10)
  end

  def test_euler_challenge
    assert_equal 142913828922, sum_of_primes(2000000)
  end
end
