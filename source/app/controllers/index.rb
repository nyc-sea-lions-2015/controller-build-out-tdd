get '/' do
  #File.read(File.join('public','index.html'))
  'Welcome to Pier 39'
end

post '/another' do
  redirect '/schedule'
end

get '/schedule' do
  "We have a lot to do today!"
end

get '/dinner' do
  'Dinner Bell! Dinnnnngggg'
end

post '/try_a_post' do
  redirect '/'
end

put '/try_a_put' do
  redirect '/'
end
