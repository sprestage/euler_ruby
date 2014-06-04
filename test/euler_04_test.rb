require_relative './minitest_helper.rb'
require_relative '../largest_palindrome_product_euler_04.rb'

class TestPalindrome < MiniTest::Test
  def test_is_empty_string_a_palindrome
    assert_equal true, isPalindrome("")
  end

  def test_is_single_element_string_a_palindrome
    assert_equal true, isPalindrome("1")
  end

  def test_is_two_element_string_a_palindrome
    assert_equal true, isPalindrome("22")
  end

  def test_is_odd_length_string_a_palindrome
    assert_equal true, isPalindrome("12321")
  end

  def test_is_even_length_string_a_palindrome
    assert_equal true, isPalindrome("123321")
  end

  def test_even_length_string_not_a_palindrome
    assert_equal false, isPalindrome("123")
  end

  def test_odd_length_string_not_a_palindrome
    assert_equal false, isPalindrome("1234")
  end

  def test_is_even_length_non_numeric_string_a_palindrome
    assert_equal true, isPalindrome("abba")
  end

  def test_is_odd_length_non_numeric_string_a_palindrome
    assert_equal true, isPalindrome("abcba")
  end
end

