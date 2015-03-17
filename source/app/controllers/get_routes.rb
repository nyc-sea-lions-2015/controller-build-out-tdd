get '/schedule' do
  File.read(File.join('public','index_2.html'))
end

get '/dinner' do
  File.read(File.join('public','index_3.html'))
end
