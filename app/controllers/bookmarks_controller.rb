class BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.bookmarks.includes(:question)
  end

  def create
    @question = Question.find(params[:question_id])
    current_user.bookmark(@question)
  end

  def destroy
    @question = Question.find(params[:question_id])
    current_user.unbookmark(@question)
  end
end
