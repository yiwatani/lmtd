class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at")
  end

  def new
    @tweet = Tweet.new
  end
end
