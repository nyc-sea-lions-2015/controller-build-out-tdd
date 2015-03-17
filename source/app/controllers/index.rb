get '/' do
  File.read(File.join('../../public','index.html'))
end

get '/schedule' do
  File.read(File.join('../../public','index_2.html'))
end

get '/dinner' do
  File.read(File.join('../../public','index_3.html'))
end

post '/try_a_post' do
  redirect '/'
end

put '/try_a_put' do
  puts params
  redirect '/'
end
