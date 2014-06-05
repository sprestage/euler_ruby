require_relative './minitest_helper.rb'
require_relative '../largest_palindrome_product_euler_04.rb'

class TestPalindrome < MiniTest::Test
  def test_is_empty_string_a_palindrome
    assert_equal true, is_palindrome("")
  end

  def test_is_single_element_string_a_palindrome
    assert_equal true, is_palindrome("1")
  end

  def test_is_two_element_string_a_palindrome
    assert_equal true, is_palindrome("22")
  end

  def test_is_odd_length_string_a_palindrome
    assert_equal true, is_palindrome("12321")
  end

  def test_is_even_length_string_a_palindrome
    assert_equal true, is_palindrome("123321")
  end

  def test_even_length_string_not_a_palindrome
    assert_equal false, is_palindrome("123")
  end

  def test_odd_length_string_not_a_palindrome
    assert_equal false, is_palindrome("1234")
  end

  def test_is_even_length_non_numeric_string_a_palindrome
    assert_equal true, is_palindrome("abba")
  end

  def test_is_odd_length_non_numeric_string_a_palindrome
    assert_equal true, is_palindrome("abcba")
  end
end

class TestPalindromeProduct < MiniTest::Test
  def test_euler_example
    assert_equal 9009, find_largest_palindrome_made_from_product_of_two_X_digit_nums(2)
  end

  def test_euler_challenge
    assert_equal 906609, find_largest_palindrome_made_from_product_of_two_X_digit_nums(3)
  end
end

