PDFKit.configure do |config|

  config.wkhtmltopdf = '/Users/Jeffrey/.rbenv/versions/2.1.2/bin/wkhtmltopdf'
  # config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf'
  config.default_options = {
    :page_size => 'Letter',
    :print_media_type => true
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost:3000"
  config.verbose = false
end