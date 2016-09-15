class DiscussionsController < ApplicationController

  include DiscussionsHelper
  include AuthHelper

  before_action :logged_in?
  before_action :find_discussion, only: [:show, :edit, :update, :destroy]
  before_action :is_owner!, only: [:edit, :update, :destroy]

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
        flash[:error] = @discussion.errors.full_messages.join(", ")
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
    @discussion.comments.destroy_all
    @discussion.destroy
    redirect_to discussions_path
  end

  private

  def discussion_params
    params.require(:discussion).permit(:title, :content)
  end

  def current_user_is_original_poster?
    current_user.id == @discussion.user_id
  end

  def is_owner!
    auth_fail("That doesn't belong to you.", discussion_path) unless current_user_is_original_poster?
  end

end
