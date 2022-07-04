# frozen_string_literal: true

# parser.rb
load './solve.rb'
puts 'Введите значения элементов через пробел'
string_of_numbers = gets.chomp
array = string_of_numbers.split(' ')
solve(array)
