get '/' do
  File.read(File.join('public','index.html'))
end

get '/index2' do
  File.read(File.join('public','index_2.html'))
end
