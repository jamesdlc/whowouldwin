class DiscussionsController < ApplicationController

  include DiscussionsHelper
  include AuthHelper

  before_action :find_discussion, only: [:show, :edit, :update, :destroy]

  def index
    @discussions = Discussion.all
  end

  def show
  end

  def new
    @discussion = Discussion.new
  end

  def create
    @discussion = Discussion.new(discussion_params)
    @discussion[:user_id] = current_user[:id]
    if @discussion.save
      redirect_to discussions_path
    else
      redirect_to new_discussion_path
    end
  end

  def edit
  end

  def update
    if @discussion.update(discussion_params)
      redirect_to discussion_path(@discussion)
    end
  end

  def destroy
    @discussion.destroy
    redirect_to discussions_path
  end

  private

  def discussion_params
    params.require(:discussion).permit(:title, :content)
  end

end
