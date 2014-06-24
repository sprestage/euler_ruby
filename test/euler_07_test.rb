require_relative './minitest_helper.rb'
require_relative '../10001st_prime_euler_07.rb'

class TestIsPrime < MiniTest::Test
  def test_is_2_prime
    assert_equal true, is_prime(2)
  end

  def test_is_3_prime
    assert_equal true, is_prime(3)
  end

  def test_is_4_prime
    assert_equal false, is_prime(4)
  end
end

class TestEratosthenesSeiveSetup < MiniTest::Test
  def test_set_up_seive_of_eratosthenes_returns_a_hash
    @eratos_hash = Hash.new
    assert_instance_of Hash, set_up_sieve_of_eratosthenes(@eratos_hash, 20)
  end

  def test_set_up_seive_of_eratosthenes_returns_hash_of_correct_size
    @eratos_hash = Hash.new
    assert_equal 20, set_up_sieve_of_eratosthenes(@eratos_hash, 20).size
  end

end

class TestCountPrimes < MiniTest::Test
  def test_count_primes
    @eratos_hash = Hash.new
    set_up_sieve_of_eratosthenes(@eratos_hash, 20)
    assert_equal 8, count_primes(@eratos_hash, 20)
  end
end

class TestFindXthPrime < MiniTest::Test
  def test_euler_example
    assert_equal 13, find_prime(6)
  end

  def test_euler_challenge
    assert_equal 104743, find_prime(10001)
  end
end
