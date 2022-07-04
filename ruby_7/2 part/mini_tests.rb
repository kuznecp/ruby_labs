# frozen_string_literal: true

require './solve'
require 'minitest/autorun'
# mini_tests.rb
class Test1 < MiniTest::Unit::TestCase
  def test_house_year
    a = House.new(100, 100, 100)
    assert_equal(100, a.year)
  end

  def test_houseom_meters
    a = HouseOneMetre.new(100, 100, 100)
    assert_equal(100, a.meters)
  end

  def test_houseom_one_metre
    a = HouseOneMetre.new(100, 100, 100)
    assert_equal(1, a.one_metre)
  end

  def test_house_year_two
    a = House.new(100, 100, 100)
    a.year = 50
    assert_equal(50, a.year)
  end

  def test_houseom_one_cost
    a = HouseOneMetre.new(100, 100, 100)
    a.cost = 'Oops..'
    assert_equal('Oops..', a.cost)
  end

  def test_inheritance
    assert(HouseOneMetre < House)
  end
end
