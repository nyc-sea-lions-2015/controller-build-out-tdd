post '/try_a_post' do
  redirect '/'
end

put "/try_a_put" do
  puts params
  redirect "/"
end

delete "/try_a_delete" do
  redirect "/"
end
