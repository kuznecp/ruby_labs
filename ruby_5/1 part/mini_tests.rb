# frozen_string_literal: true

require './solve'
require 'minitest/autorun'
# mini_tests.rb
class Test1 < MiniTest::Unit::TestCase
  def test_zero_and_zero
    x = 0
    z = 0
    res = 0
    assert_in_delta(res, solve(x, z), 10**-3)
  end

  def test_three_and_five
    x = 3
    z = 5
    res = 13.94797
    assert_in_delta(res, solve(x, z), 10**-3)
  end

  def test_one_and_zero
    x = 1
    z = 0
    res = 1.82581
    assert_in_delta(res, solve(x, z), 10**-3)
  end

  def test_minus_one_and_zero
    x = -1
    z = 0
    res = 0.492369
    assert_in_delta(res, solve(x, z), 10**-3)
  end

  def test_two_and_four
    x = 2
    z = 4
    res = 14.15686
    assert_in_delta(res, solve(x, z), 10**-3)
  end
end
