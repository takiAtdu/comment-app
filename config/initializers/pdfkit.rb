# config/initializers/pdfkit.rb
PDFKit.configure do |config|
  # config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf' # wkhtmltopdfのバイナリパスを指定
  config.wkhtmltopdf = `which wkhtmltopdf`.to_s.strip
  config.default_options = {
    page_size: 'Letter', 
    quiet: false, 
  }
end