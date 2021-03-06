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

  def following
    @user  = User.find(params[:id])
    @users = @user.following
    render '_show_follow'
  end

  def followers
  @user  = User.find(params[:id])
  @users = @user.followers
  render '_show_follower'
  end

  private def user_params
    params.require(:user).permit(:email, :username, :sex, :image, :description)
  end

end
