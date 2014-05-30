require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require_relative '../prime_factor_euler_03.rb'

describe "findSmallestFactor returns correct response" do
  it "passes for a prime number" do
    assert findSmallestFactor(2) == 2
  end

  it "passes for a non-prime, square number" do
    assert findSmallestFactor(9) == 3
  end

  it "passes for a non-prime, square number" do
    assert findSmallestFactor(18) == 2
  end

  it "passes for a non-prime, square number" do
    assert findSmallestFactor(45) == 3
  end

  it "passes for a non-prime, cube number" do
    assert findSmallestFactor(125) == 5
  end
end

describe "findBiggestPrimeFactor returns correct response" do
  it "passes for prime number" do
    assert findBiggestPrimeFactor(5) == 5
  end

  it "passes for non-prime number containing a square" do
    assert findBiggestPrimeFactor(12) == 3
  end

  it "passes for non-prime number containing a cube" do
    assert findBiggestPrimeFactor(24) == 3
  end

  it "passes for the Euler example" do
    assert findBiggestPrimeFactor(13195) == 29
  end
end

