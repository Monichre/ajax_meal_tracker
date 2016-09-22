class UsersController < ApplicationController
  before_action :get_user, only: [:edit, :show, :update, :destroy]

  def show
    @user = current_user
    render :profile
  end

  def edit
    @user.update(image_params)
  end

  def update
    @user.update(image_params)
    redirect_to user_path(@user)
  end

  def destroy

  end


  private

  def image_params
    params.require(:user).permit(:avatar)
  end

  def get_user
    @user = User.find(params[:id])
  end
end
