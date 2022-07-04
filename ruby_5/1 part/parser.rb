# frozen_string_literal: true

# parser.rb
load 'solve.rb'
puts 'Введите x:'
x = gets.to_f
puts 'Введите z:'
z = gets.to_f
puts "Результат вычисления
((#{x}^2 + 2 * (e^#{x})) * cos((6*#{z}) / #{x} - 5)) равен:"
puts solve(x, z)
