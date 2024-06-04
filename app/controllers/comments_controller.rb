# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to posts_path, notice: 'Comment was successfully created.'
      else
        # Re-render the form with the @comment instance variable
        render :new
      end
    end
    private
  
    def comment_params
      params.require(:comment).permit(:comments)
    end
  end
  