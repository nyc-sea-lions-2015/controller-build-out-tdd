get '/' do
  File.read(File.join('public','index.html'))
end

get '/index_2' do
  File.read(File.join('public','index_2.html'))
end

get '/index_3' do
  File.read(File.join('public','index_3.html'))
end

post '/try_a_post' do
  redirect '/'
end

put '/try_a_put/with_a_param=true' do
  redirect '/'
end
