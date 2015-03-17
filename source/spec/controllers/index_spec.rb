require './app/controllers/get_routes'
require './app/controllers/update_routes'
require './spec/spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Welcome to Pier 93')
  end

  it 'Should get the /index2 route' do
      get '/index2'
      expect(last_response).to be_ok
      expect(last_response.body).to include('This is the second index page')
  end

  it 'Should get the /index3 route' do
      get '/index3'
      expect(last_response).to be_ok
      expect(last_response.body).to include(' This is the third index page')
  end

  it 'Should get the /another route' do
      get '/schedule'
      expect(last_response).to be_ok
      expect(last_response.body).to include('We have a lot to do today!')
  end

  it 'Should get the /dinner route' do
      get '/dinner'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Dinner Bell! Dinnnnngggg')
  end

  it 'Should post a new route' do
      post '/try_a_post'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('Welcome to Pier 93')
  end

  it 'Should update an existing route' do
      put '/try_a_put', :with_a_param => true
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('Welcome to Pier 93')
  end

  it 'Should delete existing route' do
      delete '/try_a_delete'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('Welcome to Pier 93')
  end
end
