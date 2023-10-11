class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:update, :create, :destroy]

  def update
    comment = Comment.find(params[:id])
    if comment.update(comment_params)
      redirect_to edit_text_path(comment.text_id)
    else
      render edit_text_path(comment.text_id), status: :unprocessable_entity
    end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to edit_text_path(@comment.text_id)
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    Comment.find(params[:id]).destroy
    flash[:success] = "コメントを削除しました"
    redirect_to edit_text_path(comment.text_id), status: :see_other
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :highlighted_text, :start_offset, :end_offset, :text_id)
  end
end
