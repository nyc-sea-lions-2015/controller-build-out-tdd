require_relative '../spec_helper'

describe 'Index Controller' do

  it 'Should get the / route' do
    get '/index2'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Fisherman's Wharf")
  end

  # it 'Should get the /another route' do
#     get '/schedule'
#     expect(last_response).to be_ok
#     expect(last_response.body).to include('We have a lot to do today!')
  # end

  # it 'Should get the /dinner route' do
#     get '/dinner'
#     expect(last_response).to be_ok
#     expect(last_response.body).to include('Dinner Bell! Dinnnnngggg')
  # end

end