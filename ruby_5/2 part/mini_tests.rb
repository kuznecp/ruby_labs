# frozen_string_literal: true

require './solve'
require 'minitest/autorun'
# mini_tests.rb
class Test1 < MiniTest::Unit::TestCase
  def test_auto_testing
    arr = Array.new(10) { rand(0...100) }
    arr2 = arr.sort
    assert_equal(arr2, solve(arr))
  end
end
