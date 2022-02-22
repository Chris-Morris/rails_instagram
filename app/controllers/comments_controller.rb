class CommentsController < ApplicationController
    def create 
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.save
        # redirect_to posts_path
        # respond_to do |format|
        #     format.js {render partial: 'posts/comment' }
        # end
    end

     # DELETE /posts/1 or /posts/1.json
     def destroy
        print params[:id]
        @post = Post.find(params[:post_id])
        @comment = @post.comment.find(params[:id])

        @comment.destroy
    
        respond_to do |format|
          format.html { redirect_to posts_url, status: :see_other, notice: "Comment was successfully destroyed." }
          format.json { head :no_content }
        end
      end

    private 
    def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
