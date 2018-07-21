class GoodsController < ApplicationController
  def index
  @good_tweets = current_user.good_tweets
  end

  def create
    good = Good.new
    good.user_id = current_user.id
    good.tweet_id = params[:tweet_id]
    if good.save
      redirect_to tweets_path
    else
      redirect_to root_path
    end
  end
end
