class QuestionsController < ApplicationController
  def show
    @result = Result.new
    @questions = Question.all
  end
end
