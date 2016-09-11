class CommentsController < ApplicationController
  include DiscussionsHelper
  include AuthHelper

  before_action :logged_in?
  before_action :find_discussion, except: [:index]
  before_action :find_comment, only: [:edit, :update, :destroy]
  before_action :is_owner!, only: [:edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def new
    @user = current_user
    @comment = Comment.new
    @comment[:user_id] = current_user[:id]
  end

  def create
    @comment = Comment.new(comment_params)
    @comment[:user_id] = current_user[:id]
    @discussion.comments << @comment
    if @comment.save
      flash[:notice] = "Congratulations! Your comment was successfully posted."
      redirect_to discussion_path(@discussion)
    else
      flash[:notice] = "Please enter your comment."
      redirect_to discussion_comments_path
    end
  end

  def edit
  end

  def update
    @comment.update(comment_params)
    flash[:notice] = "Your comment was successfully edited."
    redirect_to discussion_path(@discussion)
  end

  def destroy
    @comment.destroy
    flash[:notice] = "Your comment was successfully deleted."
    redirect_to discussion_path
  end

  private

    def find_comment
      @comment = Comment.find_by_id(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content)
    end

    def current_user_is_original_poster?
      current_user.id == @comment.user_id
    end

    def is_owner!
      auth_fail("Try again", discussion_path) unless current_user_is_original_poster?
    end

end
