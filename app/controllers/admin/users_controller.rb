class Admin::UsersController < ApplicationController
  before_action :admin_user
  before_action :set_user, only: %i[edit update]

  def index
    @users = User.all.order(created_at: :desc)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'ユーザー情報を更新しました'
      redirect_to admin_users_path
    else
      flash[:danger] = 'ユーザー情報の更新に失敗しました'
      redirect_to edit_admin_user_path(user)
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      flash[:success] = 'ユーザーを削除しました'
      redirect_to admin_users_path
    else
      flash[:danger] = 'ユーザーの削除に失敗しました'
      redirect_to admin_users_path
    end
  end

  private
  def admin_user
    redirect_to root_path unless current_user.admin?
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.fetch(:user).permit(:name, :email, :role)
  end
end
