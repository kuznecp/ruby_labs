# frozen_string_literal: true

# parser.rb
load 'solve.rb'
f_file = File.new('F.txt', 'w+')
f_file.syswrite('BCADF')
f_file.close
g_file = File.new('G.txt', 'w+')
g_file.syswrite('AAAAF')
g_file.close
puts solve
File.delete('F.txt', 'G.txt')
