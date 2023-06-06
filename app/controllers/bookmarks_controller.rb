class BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.bookmarks.includes(:question)
  end

  def create
    @question = Question.find(params[:question_id])
    current_user.bookmark(@question)
    render turbo_stream: turbo_stream.replace(
      'bookmark-button',
      partial: 'results/bookmark_button',
      locals: { question: @question }
    )
  end

  def destroy
    @question = Question.find(params[:question_id])
    current_user.unbookmark(@question)
    render turbo_stream: turbo_stream.replace(
      'bookmark-button',
      partial: 'results/bookmark_button',
      locals: { question: @question }
    )
  end
end
