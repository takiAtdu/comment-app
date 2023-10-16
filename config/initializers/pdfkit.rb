# config/initializers/pdfkit.rb
PDFKit.configure do |config|
  config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf' # wkhtmltopdfのバイナリパスを指定
  config.default_options = {
    page_size: 'Letter',
    print_media_type: true
  }
end