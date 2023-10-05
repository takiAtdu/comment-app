class TextsController < ApplicationController
  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params)
    @text.save
    redirect_to new_text_path
  end

  def edit
    @text = Text.find(params[:id])
    @comments = Comment.where(text_id: params[:id]).order(start_offset: "ASC")
    @highlighted_texts = @comments.pluck(:highlighted_text).uniq
  end

  def destroy
    text = Text.find(params[:id])
    Text.find(params[:id]).destroy
    flash[:success] = "テキストを削除しました"
    redirect_to new_text_path, status: :see_other
  end

  private
  def text_params
    params.require(:text).permit(:text)
  end
end