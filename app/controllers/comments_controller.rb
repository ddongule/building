class CommentsController < ApplicationController

    def create
        @comment = Comment.new
        @comment.user = params[:comment_user]
        @comment.content = params[:comment_content]
        @comment.post_id = params[:post_id]
        @comment.save

        redirect_to "/posts/show/#{@comment.post_id}"
    end

    def destory
        @comment = Comment.find(params[:comment_id])
        @comment.destroy

        redirect_to "/posts/show/#{@comment.post_id}"
    end
end
