get '/' do
  File.read(File.join('public','index.html'))
end

post '/try_a_post' do
  redirect '/'
end

put "/try_a_put" do
  redirect "/"
end

delete "/try_a_delete" do
  redirect "/"
end
