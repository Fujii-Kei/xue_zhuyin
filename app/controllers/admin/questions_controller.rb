class Admin::QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @categories = Category.all
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to admin_questions_path, notice: 'Question was successfully created.'
    else
      flash.now[:alert] = 'Question was failed to create.'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(
      :title, 
      :body, 
      :category_id,
      answers_attributes: [:id, :body, :is_correct, :answer_audio, :_destroy]
    ) 
  end
end
