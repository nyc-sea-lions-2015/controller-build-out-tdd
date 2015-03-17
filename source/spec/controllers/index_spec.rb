require_relative '../spec_helper'

describe 'Index Controller' do

it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to Pier 39')
end

it 'Should get the /index2 route' do
    get '/index_2'
    expect(last_response).to be_ok
    expect(last_response.body).to include('We have a lot to do today!')
end

it 'Should get the /dinner route' do
    get '/index_3'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Dinner Bell! Dinnnnngggg')
end

it 'does an http post to the route /try_a_post' do
    post '/try_a_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to Pier 39')
end

it 'does an http post to the route /try_a_put' do
    put '/try_a_put/with_a_param=true'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to Pier 39')
end

it 'does an http post to the route /try_a_put' do
    put '/try_a_put/with_a_param=true'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include('Welcome to Pier 39')
end


end


