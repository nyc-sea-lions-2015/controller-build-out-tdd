get '/' do
  #File.read(File.join('public','index.html'))
  'Welcome to Pier 39'
end


get '/schedule' do
  "We have a lot to do today!"
end

get '/dinner' do
  'Dinner Bell! Dinnnnngggg'
end
