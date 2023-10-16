class ShowPdfController < ApplicationController
  def index
    @text = Text.find(params[:id])
    @comments = Comment.where(text_id: params[:id]).order(start_offset: "ASC")
    @highlighted_texts = @comments.pluck(:highlighted_text).uniq

    # html = render_to_string("show_pdf/index", layout: "pdf")
    # # html = File.read("#{Rails.root}/app/views/show_pdf/index.html.erb")
    # kit = PDFKit.new(html, page_size: 'A4')
    # kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/custom.scss"
    # # kit.javascripts << "#{Rails.root}/app/javascript/application.js"
    # # kit.to_file("#{Rails.root}/public/example.pdf")
    # send_data kit.to_pdf, filename: 'example.pdf', type: 'application/pdf', disposition: 'inline'

    kit = PDFKit.new('https://comment-app-c9kf.onrender.com/texts/' + params[:id])
    kit.to_file("#{Rails.root}/public/example.pdf")
    send_data kit.to_pdf, filename: 'example.pdf', type: 'application/pdf', disposition: 'inline'
  end
end
