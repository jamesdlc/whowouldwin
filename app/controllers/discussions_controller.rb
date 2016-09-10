class DiscussionsController < ApplicationController

  before_action :find_discussion, only: [:show, :edit, :update, :destroy]

  def index
    @discussions = Discussion.all
  end

  def show
    @discussion = Discussion.find_by_id(params[:id])
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new(discussion_params)
    if @discussion.save
      redirect_to discussions_path
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @discussion.update(discussion_params)
    redirect_to root_path
    end
  end

  def destroy
    if auth_through_article
      @discussion.destroy
      redirect_to root_path
    end
  end

  private

  def discussion_params
    params.require(:discussion).permit(:title, :content)
  end

end
