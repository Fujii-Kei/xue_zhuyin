class ResultsController < ApplicationController
  def create
    # クイズ結果を保存する
    @result = Result.create(
      score: params[:score],
      user_id: current_user.id,
      category_id: params[:category_id],
      level_id: params[:level_id]
    )

    if @result.save
      # 保存に成功した場合は、ビューに遷移する
      redirect_to results_path, notice: 'クイズ結果を保存しました。'
    else
      # 保存に失敗した場合は、エラーメッセージを表示する
      flash[:alert] = 'クイズ結果の保存に失敗しました。'
      render :new
    end
  end

  def index
    # 現在ログインしているユーザーのクイズ結果を取得する
    @results = Result.where(user_id: current_user.id)
  end

  def show
    @result = Result.find(params[:id])
  end
end
