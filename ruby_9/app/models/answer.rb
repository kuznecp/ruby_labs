# app/models/answer.rb

class Answer < ApplicationRecord
  validates :query, presence: true, uniqueness: true
  before_create :calculate

  def get_solution
    ActiveSupport::JSON.decode(solution)
  end

  def calculate
    str = query.to_s
    array = str.split(' ').map(&:to_i)
    n = array[0].to_i
    array.delete_at(0)
    if array.length != n || n < 1
      res = []
    else
      all_ok_seq = []
      tmp = []
      array.each do |num|
        if (Math.sqrt(num).to_i * Math.sqrt(num).to_i).to_i == num
          tmp.push num
        else
          all_ok_seq.push tmp unless tmp.empty?
          tmp = []
        end
      end
      if (Math.sqrt(array.last).to_i * Math.sqrt(array.last).to_i).to_i == array.last
        all_ok_seq.push tmp
        tmp = []
      end
      count_all = all_ok_seq.length
      max_len = 0
      seq_max = []
      all_ok_seq.each do |seq|
        if seq.length > max_len
          seq_max = seq
          max_len = seq.length
        end
      end
      str_all_seq = ''
      all_ok_seq.each do |seq|
        strng = seq.join(', ')
        str_all_seq += strng + "; "
      end
      if all_ok_seq.empty?
        str_all_seq = 'NULL'
        seq_max = 'NULL'
      end
      res = [[n, array, str_all_seq, seq_max, count_all]]
    end
    self.solution = ActiveSupport::JSON.encode(res)
  end
end
