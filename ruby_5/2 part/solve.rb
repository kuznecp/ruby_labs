# frozen_string_literal: true

# solve.rb
def solve2(array)
  puts
  puts 'Sorted array:'
  array2 = array.map(&:to_i)
  array3 = array2.sort { |x, y| x <=> y }
  p array3
end

def solve(array)
  puts "Even:\n"
  array.each_with_index do |elem, ind|
    print "#{ind}: #{elem} " if elem.to_i.even?
  end
  puts
  puts "Odd:\n"
  array.each_with_index do |elem, ind|
    print "#{ind}: #{elem} " if elem.to_i.odd?
  end
  solve2(array)
end
