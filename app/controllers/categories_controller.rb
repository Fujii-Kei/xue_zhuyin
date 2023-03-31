class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
    @questions = @category.questions
  end

  def category_params
    params.require(:category).permit(:name, :body, :category_image)
  end
end
