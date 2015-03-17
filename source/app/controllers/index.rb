get '/' do
  File.read(File.join('public','index.html'))
  'Welcome to Pier 93'
end


