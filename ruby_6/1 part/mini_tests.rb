# frozen_string_literal: true

require './solve'
require 'minitest/autorun'
# mini_tests.rb
class Test1 < MiniTest::Unit::TestCase
  def test_eps_and_res_one
    eps = 0.1
    res = 10
    assert_equal(res, solve(eps))
  end

  def test_eps_and_res_two
    eps = 0.01
    res = 101
    assert_equal(res, solve(eps))
  end

  def test_eps_and_res_three
    eps = 0.001
    res = 1001
    assert_equal(res, solve(eps))
  end

  def test_eps_and_res_four
    eps = 0.0001
    res = 100_00
    assert_equal(res, solve(eps))
  end

  def test_eps_and_res_five
    eps = 0.0005
    res = 2000
    assert_equal(res, solve(eps))
  end
end
