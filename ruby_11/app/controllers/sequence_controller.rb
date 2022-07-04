class SequenceController < ApplicationController
  before_action :prepare_variables, only: :output

  def output
    if @begseq.length != @val_n || @val_n < 1
      @result = 0
    else
      number_arr = Sequence.find_by(n: @val_n, begseq: @begseq.to_s)
      if !number_arr
        find_ready_numbers
      else
        @ready_numbers = [number_arr.try(:n), number_arr.try(:begseq), number_arr.try(:allseq), number_arr.try(:longseq), number_arr.try(:countseq)]
      end
      xml_creation
    end
  end

  def find_ready_numbers
    temptd3 = @begseq.chunk_while { |i, j| i >= 0 && j >= 0 && (Math.sqrt(i.abs) % 1).zero? && (Math.sqrt(j.abs) % 1).zero? }.to_a.select { |arr| (Math.sqrt(arr[0]) % 1).zero? }
    temptd3.length == 0 ? @allseq = 'NULL' : @allseq  = temptd3
    temptd3.length == 0 ? @longseq = 'NULL' : @longseq = @allseq.max_by(&:size)
    @countseq = temptd3.size
    @ready_numbers = [@val_n, @begseq, @allseq, @longseq, @countseq]
    Sequence.create(n: @val_n, begseq: @begseq, allseq: @allseq, longseq: @longseq, countseq: @countseq)
  end

  def xml_creation
    seqs = Sequence.take(Sequence.count)
    seqs.map! { |x| { n: x.n, begseq: x.begseq, allseq: x.allseq, longseq: x.longseq, countseq: x.countseq } }
    @xml = seqs.to_xml
  end


  private

  def prepare_variables
    @val_n = params[:n].to_i
    string_of_numbers = params[:begseq].to_s.chomp
    @begseq = string_of_numbers.split(' ').map(&:to_i)
  end
end
