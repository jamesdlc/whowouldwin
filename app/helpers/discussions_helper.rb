module DiscussionsHelper
  
  def find_discussion
    @discussion = Discussion.find_by_id(params[:discussion_id])
  end

end
