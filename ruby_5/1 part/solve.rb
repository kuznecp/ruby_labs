# frozen_string_literal: true

# solve.rb
def solve(v_x, v_z)
  if v_x.zero?
    0
  else
    ((v_x**2 + 2 * (2.7182818284**v_x)) * Math.cos((6 * v_z) / v_x - 5))
  end
end
