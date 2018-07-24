class UsersController < ApplicationController
  def show
  end
  
  def index
    @user = User.all
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
  if @user.update(user_params)
    redirect_to @user
  else
    render 'edit'
  end
  end

  private def user_params
    params.require(:user).permit(:email, :username, :sex, :image)
  end

end