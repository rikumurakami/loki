class TopController < ApplicationController

before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.order("created_at DESC").page(params[:page]).per(3)
    respond_to do |format|
    format.html
    format.js
  end
end

  def new
  end

def create
      Tweet.create(tweet_params)
    end

def destroy
      tweet = Tweet.find(params[:id])
      if user_signed_in?
        tweet.destroy
      end
    end

def edit
      @tweet = Tweet.find(params[:id])
    end

def update
      tweet = Tweet.find(params[:id])
      if user_signed_in?
        tweet.update(tweet_params)
      end
    end


private
    def tweet_params
      params.permit(:image, :text, :title, :id)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
  end


