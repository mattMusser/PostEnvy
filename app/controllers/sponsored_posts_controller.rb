class SponsoredPostsController < ApplicationController
  def show
    @sponsored = SponsoredPost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @sponsored = SponsoredPost.new
  end

  def create
    @sponsored = SponsoredPost.new
    @sponsored.title = params[:sponsored_post][:title]
    @sponsored.body = params[:sponsored_post][:body]
    @topic = Topic.find(params[:topic_id])
  # Assigns a topic to a sponsored post
    @sponsored.topic = @topic

    if @sponsored.save
      flash[:notice] = "Post was saved."
      redirect_to [@topic, @sponsored]
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
    @sponsored = SponsoredPost.find(params[:id])
  end
end
