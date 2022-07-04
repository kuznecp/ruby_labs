class SequenceController < ApplicationController
  def input
  end

  def get_norm(n, array)
    @td1 = n
    @td2 = array
    temptd3 = array.chunk_while { |i, j| i >= 0 && j >= 0 && (Math.sqrt(i.abs) % 1).zero? && (Math.sqrt(j.abs) % 1).zero? }.to_a.select { |arr| (Math.sqrt(arr[0]) % 1).zero? }
    temptd3.length == 0 ? @td3 = 'NULL' : @td3 = temptd3
    temptd3.length == 0  ? @td4 = 'NULL' : @td4 = @td3.max_by(&:size)
    @td5 = @td3.size
    @result = @td3.size
  end

  def view
    n = params[:v1].to_i
    string_of_numbers = params[:v2].to_s.chomp
    array = string_of_numbers.split(' ').map(&:to_i)
    if array.length != n || n < 1
      @result = -1
    else
      get_norm(n, array)
    end
  end
end
