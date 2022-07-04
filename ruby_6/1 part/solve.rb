# frozen_string_literal: true

# solve.rb
def solve(eps)
  k = 1.0
  sum = 0.0
  loop do
    curr = sum + (((-1)**(k - 1)) / k).to_f
    break if (curr - sum).abs < eps
    sum += (curr - sum)
    k += 1
  end
  k
end
