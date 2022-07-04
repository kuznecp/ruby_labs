# frozen_string_literal: true

# solve.rb
def solve_f
  str1 = ''
  File.open('F.txt', 'r')
  arr1 = IO.readlines('F.txt')
  (0..arr1.length - 1).each do |i|
    str1 += arr1[i]
  end
  str1
end

def solve_g
  str2 = ''
  File.open('G.txt', 'r')
  arr2 = IO.readlines('G.txt')
  (0..arr2.length - 1).each do |i|
    str2 += arr2[i]
  end
  str2
end

def solve_h(str1, str2)
  str3 = ''
  h_file = File.new('H.txt', 'w+')
  (0..str2.length - 1).each do |i|
    str3 += str2[i] if str2[i] == str1[i]
  end
  h_file.syswrite(str3)
  h_file.close
  str3
end

def solve
  str1 = solve_f
  str2 = solve_g
  solve_h(str1, str2)
end
