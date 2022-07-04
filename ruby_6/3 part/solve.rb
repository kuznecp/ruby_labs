# frozen_string_literal: true

def solve(v_a, v_b, v_n, lambda = nil, &block)
  block = lambda unless lambda.nil?
  s = 0
  x = 0
  x += v_a
  h = (v_b - v_a) / v_n
  (0..v_n - 1).each do |i|
    x = v_a + i * h
    s += block.call(x)
  end
  h * s
end
