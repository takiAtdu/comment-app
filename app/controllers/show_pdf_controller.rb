class ShowPdfController < ApplicationController
  def index
    respond_to do |format|
      format.pdf do
        show_pdf = ShowPdf.new().render
        send_data show_pdf,
          filename: "comment-app-pdf.pdf",
          type: 'application/pdf',
          disposition: 'inline' # 外すとアクセス時に自動ダウンロードされるようになる
      end
    end
  end
end
