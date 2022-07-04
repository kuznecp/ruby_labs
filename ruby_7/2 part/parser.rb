# frozen_string_literal: true

# parser.rb
load 'solve.rb'
a = House.new(1900, 200, 100_00)
puts 'House a, year:'
puts a.year
puts 'House a, meters:'
puts a.meters
puts 'House a, cost:'
puts a.cost
puts
b = HouseOneMetre.new(1750, 2020, 100_00)
puts HouseOneMetre.ancestors
puts 'House b, year:'
puts b.year
puts 'House b, meters:'
puts b.meters
puts 'House b, cost:'
puts b.cost
puts 'House b, cost of 1 metre:'
puts b.one_metre
