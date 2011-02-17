class Comment < ActiveRecord::Base
  belongs_to :idea

  class CommentsController < ApplicationController
  def create
    @idea = Post.find(params[:post_id])
    @comment = @idea.comments.create(params[:comment])
    redirect_to idea_path(@idea)
  end
end

end
