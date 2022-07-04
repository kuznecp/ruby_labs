# app/controllers/sequence_controller.rb

class SequenceController < ApplicationController
  before_action :authorize

  def input
    begin
      a = params[:value].to_s
      b = params[:numbers].to_s
      c = a + " " + b
    end
    respond_to do |format|
      format.html
      format.json do
        render json: { solution: Answer.where(query: c).first_or_create.get_solution}
      end
    end
  end
end
