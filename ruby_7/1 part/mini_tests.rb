# frozen_string_literal: true

require './solve'
require 'minitest/autorun'
# mini_tests.rb
class Test1 < MiniTest::Unit::TestCase
  def new_files(str1, str2)
    f_file = File.new('F.txt', 'w+')
    f_file.syswrite(str1)
    f_file.close
    g_file = File.new('G.txt', 'w+')
    g_file.syswrite(str2)
    g_file.close
  end

  def random_str
    str = ''
    i = 0
    loop do
      i += 1
      symb = rand(65..90).chr
      random_symbol = symb.to_s
      str += random_symbol
      break if i == 10
    end
    str
  end

  def find_smt(str1, str2)
    res = ''
    (0..str2.length - 1).each do |i|
      res += str2[i] if str2[i] == str1[i]
    end
    res
  end

  def assert_and_delete(res)
    assert_equal(res, solve)
    File.delete('F.txt', 'G.txt')
  end

  def test_no_match
    new_files('AAAA', 'BSDOKW')
    res = ''
    assert_and_delete(res)
  end

  def test_all_match
    new_files('Hello, world!', 'Hello, world!')
    res = 'Hello, world!'
    assert_and_delete(res)
  end

  def test_not_all_match
    new_files('Hello, world', 'Helloworld')
    res = 'Hello'
    assert_and_delete(res)
  end

  def test_not_all_match_two
    new_files('A12', 'B123')
    res = '12'
    assert_and_delete(res)
  end

  def test_empty_strings
    new_files(' ', ' ')
    res = ' '
    assert_and_delete(res)
  end

  def test_random_strings
    str1 = random_str
    str2 = random_str
    res = find_smt(str1, str2)
    new_files(str1, str2)
    assert_and_delete(res)
  end
end
