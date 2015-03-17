require 'rubygems'
require 'sinatra'

get '/' do
  File.read(File.join('public','index.html'))

end

get '/index2' do
  File.read(File.join('public','index_2.html'))
end

get '/index3' do
  File.read(File.join('public','index_3.html'))
end

get '/schedule' do
    'We have a lot to do today!'
end

get '/dinner' do
    'Dinner Bell! Dinnnnngggg'
end
