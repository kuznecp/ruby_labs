# frozen_string_literal: true

# solve.rb
# class House
class House
  attr_accessor :year, :meters, :cost

  def initialize(year, meters, cost)
    @year = year
    @meters = meters
    @cost = cost
  end
end

# class HouseOneMetre
class HouseOneMetre < House
  attr_accessor :one_metre

  def initialize(year, meters, cost)
    super(year, meters, cost)
    @one_metre = (@cost.to_f / @meters).round(3)
  end
end
