class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit!)
    if @user.save
      flash[:notice] = "Aramıza Hoş Geldin"
      redirect_to @user
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit!
  end
end
