require_relative './minitest_helper.rb'
require_relative '../counting_sundays_euler_19.rb'

class TestIsThisDayNumberASunday < MiniTest::Test
  def test_is_day_0_a_sunday
    assert_equal true, is_day_number_a_sunday(0)
  end

  def test_is_day_1_a_sunday
    assert_equal false, is_day_number_a_sunday(1)
  end

  def test_is_day_7_a_sunday
    assert_equal true, is_day_number_a_sunday(7)
  end

  def test_is_day_8_a_sunday
    assert_equal false, is_day_number_a_sunday(8)
  end
end

class TestIsLeapYear < MiniTest::Test
  def test_is_1900_a_leap_year
    assert_equal false, is_leap_year(1900)
  end

  def test_is_2000_a_leap_year
    assert_equal true, is_leap_year(2000)
  end

  def test_is_1904_a_leap_year
    assert_equal true, is_leap_year(1904)
  end
end

class TestCountDaysInYear < MiniTest::Test
  def test_how_many_days_in_year_1900
    assert_equal 365, how_many_days_in_year(1900)
  end

  def test_how_many_days_in_year_2000
    assert_equal 366, how_many_days_in_year(2000)
  end

  def test_how_many_days_in_year_2100
    assert_equal 365, how_many_days_in_year(2100)
  end
end

class TestCountDaysInMonth < MiniTest::Test
  def test_how_many_days_in_month_january
    assert_equal 31, how_many_days_in_month(1)
  end

  def test_how_many_days_in_month_april
    assert_equal 30, how_many_days_in_month(4)
  end

  def test_how_many_days_in_month_february
    assert_equal 28, how_many_days_in_month(2)
  end
end

class TestFindDayNumber < MiniTest::Test
  def test_find_day_number_1901_01_01
    assert_equal 366, find_day_number(1901, 01, 01)
  end

  def test_find_day_number_1900_12_31
    assert_equal 365, find_day_number(1900, 12, 31)
  end

  def test_find_day_number_1900_01_01
    assert_equal 1, find_day_number(1900, 01, 01)
  end

  def test_find_day_number_1900_01_31
    assert_equal 31, find_day_number(1900, 01, 31)
  end

  def test_find_day_number_1900_03_01
    assert_equal (31+28+1), find_day_number(1900, 03, 01)
  end

  def test_find_day_number_1901_01_31
    assert_equal (365+31), find_day_number(1901, 01, 31)
  end

  def test_find_day_number_1902_01_31
    assert_equal (365+365+31), find_day_number(1902, 01, 31)
  end

  def test_find_day_number_1905_01_31
    assert_equal (365+365+365+365+366+31), find_day_number(1905, 01, 31)
  end
end

class TestCountSundays < MiniTest::Test
  def test_euler_example_first_minus_1
    assert_equal 0, count_sundays(1901, 8)
  end

  def test_euler_example_first
    assert_equal 1, count_sundays(1901, 9)
  end

  def test_euler_example_second_minus_1
    assert_equal 1, count_sundays(1901, 11)
  end

  def test_euler_example_second
    assert_equal 2, count_sundays(1901, 12)
  end

  def test_euler_challenge
    assert_equal 171, count_sundays(2000, 12)
  end
end
