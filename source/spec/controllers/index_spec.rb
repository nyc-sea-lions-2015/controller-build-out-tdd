require_relative '../spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Welcome to Pier 39')
  end

  it 'should get the index_2.html' do
    get '/index2'
    expect(last_response).to be_ok
    expect(last_response.body).to include('This is the second index page')
  end

  it 'should get the index_3.html' do
    get '/index3'
    expect(last_response).to be_ok
    expect(last_response.body).to include('This is the third index page')
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

  it 'should redirect to / route' do
    post '/try_a_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include('Welcome to Pier 39')
  end

  it 'should redirect to / route' do
    put '/try_a_put', :params => {with_a_param: true}
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include('Welcome to Pier 39')
  end

  it 'should redirect to / route' do
    delete '/try_a_delete'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include('Welcome to Pier 39')
  end
end
