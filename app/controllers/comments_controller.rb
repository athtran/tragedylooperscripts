class CommentsController < ApplicationController
	def index
	    @comments = Comment.all
	end

  def create
    @script = Script.find(params[:script_id])
    @comment = @script.comments.create(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to mastermind_script_path(@script)
  end
 
  def destroy
  	@return = Script.find(params[:script_id])
  	@comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to mastermind_script_path(@return)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
