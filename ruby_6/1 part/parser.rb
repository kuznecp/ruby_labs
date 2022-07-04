# frozen_string_literal: true

# parser.rb
load 'solve.rb'
puts 'Sum of raw -- ((-1) ^ (k - 1)) / k,
with an accuracy of 0.01'
puts solve(0.01)
puts
puts 'Sum of raw -- ((-1) ^ (k - 1)) / k,
with an accuracy of 0.0001'
puts solve(0.0001)
