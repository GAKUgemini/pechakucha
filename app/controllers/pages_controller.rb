class PagesController < ApplicationController
  def help
  end
  def index
    @user = User.new
  end
  def create
    @user = User.new(user_params)
  if @user.save
    redirect_to selects_index_path
  else
    render :index
  end

  end


  private def user_params
  params.require(:user).permit(:username, :email,:password, :password_confirmation)
  end
end
