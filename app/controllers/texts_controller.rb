class TextsController < ApplicationController
  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params)
    @text.save
    s3_client = Aws::S3::Client.new(region: ENV["REGION"], access_key_id: ENV["ACCESS_KEY_ID"], secret_access_key: ENV["SECRET_ACCESS_KEY"])
    file = s3_client.get_object(bucket: ENV["BUCKET"], key: @text.document.key).body.read
    tempfile = create_tempfile(file)
    reader = Pdftotext.text(tempfile)
    puts reader
    @text.update(text: reader)
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
    params.require(:text).permit(:text, :document)
  end
end