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
    @sponsored.price = params[:sponsored_post][:price]
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

  def update
    @sponsored = SponsoredPost.find(params[:id])
    @sponsored.title = params[:sponsored_post][:title]
    @sponsored.price = params[:sponsored_post][:price]
    @sponsored.body = params[:sponsored_post][:body]

    if @sponsored.save
      flash[:notice] = "Post was updated."
      redirect_to [@sponsored.topic, @sponsored]
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :edit
    end
  end
end
