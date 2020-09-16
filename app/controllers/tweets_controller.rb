class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show, :create_like]
  before_action :move_to_index, except: [:index, :show, :search]
  
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

  def show
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
  end

  def search
    @tweets = Tweet.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create_like
    if @tweet.likes.find_by(user_id: current_user.id) == nil
      Like.create(user_id: current_user.id, tweet_id: @tweet.id)
      respond_to do |format|
        format.html { redirect_to root_path}
        format.json
      end
    else
      @tweet.likes.find_by(user_id: current_user.id).destroy
      respond_to do |format|
        format.html { redirect_to root_path}
        format.json
      end
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image, :text, :category_id).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
