use Rack::Static,
  :urls => ["/static/images", "/static/css", "/static/js"],
  :root => "."

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'template, max-age=86400'
    },
    File.open('template/index.html', File::RDONLY)
  ]
}
