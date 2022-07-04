# frozen_string_literal: true

# parser.rb
load 'solve.rb'
puts 'Решение при помощи блока:'
puts solve(0.1, 1.0, 1000) { |x| Math.sin(x) / x }
puts 'Решение при помощи lambda:'
puts solve(1.0, 2.0, 1000, ->(x) { Math.tan(x + 1) / (x + 1) })
