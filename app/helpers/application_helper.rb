module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def current_user?(tweet)
    tweet.user_id == current_user.id
  end

  def user_confirmation(objects)
    tweet_id = objects.user_id
    if tweet_id == current_user.id
      return true
    else
      return false
    end
  end

end
