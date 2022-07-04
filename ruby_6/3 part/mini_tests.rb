# frozen_string_literal: true

require './solve'
require 'minitest/autorun'
# mini_tests.rb
class Test1 < MiniTest::Unit::TestCase
  def test_lambda_one
    res = 0.846139
    assert_in_delta(res, solve(0.1, 1.0, 1000) { |x| Math.sin(x) / x }, 10**-2)
  end

  def test_lambda_two
    res = 0.382718
    assert_in_delta(res, solve(0.3, 0.7, 1000) { |x| Math.sin(x) / x }, 10**-2)
  end

  def test_block_one
    r = -0.376871
    c = 1000
    e = 10**-2
    a1 = 1.0
    a2 = 2.0
    assert_in_delta(r, solve(a1, a2, c, ->(x) { Math.tan(x + 1) / (x + 1) }), e)
  end

  def test_block_two
    r = -0.139776
    c = 1000
    e = 10**-2
    a1 = 1.3
    a2 = 2.5
    assert_in_delta(r, solve(a1, a2, c, ->(x) { Math.tan(x + 1) / (x + 1) }), e)
  end
end
