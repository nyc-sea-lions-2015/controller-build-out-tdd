get '/' do
  File.read(File.join('..', '..', 'public','index.html'))
  # Above we added path parameters '..' to find the right directory to open
  # File.read('../../public/index.html')
end

get '/schedule' do
  File.read(File.join('..', '..', 'public', 'index_2.html'))
end

get '/dinner' do
  File.read(File.join('..', '..', 'public', 'index_3.html'))
end

post '/try_a_post' do
  redirect '/'
end
