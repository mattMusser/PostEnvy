class SponsoredPostController < ApplicationController
  def show
    @sponsored_post = Sponsoredpost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsored_post = Sponsoredpost.new
  end

  def edit
    @sponsored_post = Sponsoredpost.find(params[:id])
  end
end
