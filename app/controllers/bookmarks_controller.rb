class BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.bookmarks.includes(:question)
  end

  def create
  end

  def destroy
  end
end
