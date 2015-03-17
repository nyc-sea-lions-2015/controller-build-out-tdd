require_relative '../spec_helper'

describe 'Index Controller' do
  index_text = 'Welcome to Pier 39'

  it 'Should get the / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include(index_text)
  end

  it "Should process the post '/try_a_post'" do
    post '/try_a_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include(index_text)
  end

  it "Should process a put request to '/try_a_put'" do
    put '/try_a_put', :params => {food: 'crab'}
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include(index_text)
  end

  it "Should process a delete request to '/try_a_delete'" do
    delete '/try_a_delete'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response).to be_ok
    expect(last_response.body).to include(index_text)
  end

  # it 'Should get the /another route' do
  #   get '/schedule'
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('We have a lot to do today!')
  # end

  # it 'Should get the /dinner route' do
  #   get '/dinner'
  #   expect(last_response).to be_ok
  #   expect(last_response.body).to include('Dinner Bell! Dinnnnngggg')
  # end

end
