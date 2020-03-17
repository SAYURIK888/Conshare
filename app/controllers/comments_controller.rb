class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to topics_path, success: "コメントを投稿しました"
    else
      flash.now[:danger] = "コメント投稿できませんでした"
      render :new
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    # @comment.content = params[:comment][:content]
    @comment.update_attributes(comment_params)
      redirect_to topics_path, success: "コメントを編集しました"
  end  
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
      redirect_to topics_path, success: "コメントを削除しました"
  end

  private
  def comment_params
    params.require(:comment).permit(:content,:topic_id,:user_id)
  end
end