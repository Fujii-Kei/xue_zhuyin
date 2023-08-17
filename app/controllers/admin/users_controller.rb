class Admin::UsersController < ApplicationController
  before_action :set_user, only: %i[edit update destroy]

  def index
    @users = User.all
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path, notice: 'User was successfully updated.'
    else
      flash.now[:alert] = 'User was failed to update.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_path, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :role)
  end
end
