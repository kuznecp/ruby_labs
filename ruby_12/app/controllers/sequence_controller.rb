class SequenceController < ApplicationController
  def input; end

  def get_norm(n, array)
    @var_n = n
    @begseq = array
    temptd3 = @begseq.chunk_while { |i, j| i >= 0 && j >= 0 && (Math.sqrt(i.abs) % 1).zero? && (Math.sqrt(j.abs) % 1).zero? }.to_a.select { |arr| (Math.sqrt(arr[0]) % 1).zero? }
    temptd3.length == 0 ? @allseq = 'NULL' : @allseq = temptd3
    temptd3.length == 0 ? @longseq = 'NULL' : @longseq = @allseq.max_by(&:size)
    @countseq = temptd3.size
  end

  def output
    n = params[:n].to_i
    string_of_numbers = params[:begseq].to_s.chomp
    array = string_of_numbers.split(' ').map(&:to_i)
    if array.length != n || n < 1
      @result = 0
    else
      get_norm(n, array)
    end
  end
end
