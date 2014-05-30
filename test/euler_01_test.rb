require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require_relative '../multiples_of_3_or_5_euler_01.rb'

describe "sumOfMultiples returns correct answer to Euler #1." do
  it "passes for sum of all multiples of 3 or 5 below 1000, should equal 233168." do
    assert sumOfMultiples(1000) == 233168
  end
end

describe "isDivisibleByThree returns correct response" do
  it "passes for zero" do
    assert isDivisibleByThree(0) == true
  end

  it "fails for one" do
    assert isDivisibleByThree(1) != true
  end

  it "fails for two" do
    assert isDivisibleByThree(2) != true
  end

  it "passes for three" do
    assert isDivisibleByThree(3) == true
  end

  it "fails for five" do
    assert isDivisibleByThree(5) != true
  end

  it "passes for the square of three" do
    assert isDivisibleByThree(9) == true
  end

  it "passes for fifteen" do
    assert isDivisibleByThree(15) == true
  end
end

describe "isDivisibleByFive returns correct response" do
  it "passes for zero" do
    assert isDivisibleByFive(0) == true
  end

  it "fails for one" do
    assert isDivisibleByFive(1) != true
  end

  it "fails for two" do
    assert isDivisibleByFive(2) != true
  end

  it "fails for three" do
    assert isDivisibleByFive(3) != true
  end

  it "passes for five" do
    assert isDivisibleByFive(5) == true
  end

  it "passes for fifteen" do
    assert isDivisibleByFive(15) == true
  end

  it "passes for the square of five" do
    assert isDivisibleByFive(25) == true
  end
end

