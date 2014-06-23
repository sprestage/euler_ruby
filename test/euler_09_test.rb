require_relative './minitest_helper.rb'
require_relative '../special_Pythagorean_triplet_euler_09.rb'

class TestFindSpecialPythagoreanTriplet < MiniTest::Test
  def test_small_example_a
    @small_triplet = PythagoreanTriplet.new(24)
    assert_equal 6, @small_triplet.a
  end

  def test_small_example_b
    @small_triplet = PythagoreanTriplet.new(24)
    assert_equal 8, @small_triplet.b
  end

  def test_small_example_c
    @small_triplet = PythagoreanTriplet.new(24)
    assert_equal 10, @small_triplet.c
  end

  def test_small_example_sum
    @small_triplet = PythagoreanTriplet.new(24)
    assert_equal 24, @small_triplet.sum
  end

  def test_small_example_product
    @small_triplet = PythagoreanTriplet.new(24)
    assert_equal 480, @small_triplet.product
  end

  def test_big_challenge_a
    @big_triplet = PythagoreanTriplet.new(1000)
    assert_equal 200, @big_triplet.a
  end

  def test_big_challenge_b
    @big_triplet = PythagoreanTriplet.new(1000)
    assert_equal 375, @big_triplet.b
  end

  def test_big_challenge_c
    @big_triplet = PythagoreanTriplet.new(1000)
    assert_equal 425, @big_triplet.c
  end

  def test_big_challenge_sum
    @big_triplet = PythagoreanTriplet.new(1000)
    assert_equal 1000, @big_triplet.sum
  end

  def test_big_challenge_product
    @big_triplet = PythagoreanTriplet.new(1000)
    assert_equal 31875000, @big_triplet.product
  end

end
