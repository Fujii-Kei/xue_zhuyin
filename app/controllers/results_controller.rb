class ResultsController < ApplicationController
  def index
  end

  def create
    @result = Result.new(result_params)
    
    if @result.save
      redirect_to category_question_result_path(@result)
    else
      render 'questions/index'
    end
  end

  def show
    @result = Result.find(params[:id])
  end

  private
    # Only allow a list of trusted parameters through.
    def result_params
      params.require(:result).permit(:score)
    end
end
