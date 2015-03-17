get '/index2' do
  File.read(File.join('public','index_2.html'))
end

get '/index3' do
  File.read(File.join('public','index_3.html'))
end



