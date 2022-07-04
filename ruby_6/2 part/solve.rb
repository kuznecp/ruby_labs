# frozen_string_literal: true

# solve.rb
class DoWork
  attr_accessor :sum, :prev, :v_k

  def initialize(sum = 0.0, prev = 1.0, v_k = 1.0)
    @sum = sum
    @prev = prev
    @v_k = v_k
  end

  def solve(eps)
    list = Enumerator.new do |yielder|
      loop do
        yielder.yield @sum, @prev, @v_k
        @prev = @sum
        @sum += (((-1)**(@v_k - 1)) / @v_k)
        @v_k += 1
      end
    end
    list.take_while { (@prev - @sum).abs > eps }
    @v_k - 1
  end
end
