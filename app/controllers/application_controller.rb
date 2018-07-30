class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
  
  def user_confirmation(tweets)
    binding.pry
    alltweet = tweets.ids
  end
end
