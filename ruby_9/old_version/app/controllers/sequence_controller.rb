# app/controllers/sequence_controller.rb

class SequenceController < ApplicationController
  before_action :authorize

  def input
    begin
      a = params[:value].to_s
      b = params[:numbers].to_s
      c = a + " " + b
    rescue
      p 'SequenceController: Input data error'
      p c
    end
    # a = 0 if a < 0
    respond_to do |format|
      format.html
      format.json do
        render json: { solution: Answer.where(query: c).first_or_create.get_solution}
      end
    end
    # .each { |x| x[0] = x[0].to_s }
    # p Answer.last
    # p ActiveSupport::JSON.decode(Answer.last.solution)
    # p JSON.parse(Answer.all.to_json).to_xml
  end
end
