# frozen_string_literal: true

# parser.rb
load 'solve.rb'
puts 'Sum of raw -- ((-1) ^ (k - 1)) / k,
with an accuracy of 0.01'
a = DoWork.new
puts a.solve(0.01)
puts
puts 'Sum of raw -- ((-1) ^ (k - 1)) / k,
with an accuracy of 0.0001'
a = DoWork.new
puts a.solve(0.0001)
