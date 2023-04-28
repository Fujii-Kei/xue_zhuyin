class BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.bookmarks.includes(:question)
  end

  def create
    bookmark = current_user.bookmarks.create!(question_id: params[:question_id])
    redirect_to bookmarks_path, status: :see_other
  end

  def destroy
    bookmark = current_user.bookmarks.find_by(question_id: params[:question_id])
    bookmark&.destroy
    redirect_to bookmarks_path, status: :see_other
  end
end
