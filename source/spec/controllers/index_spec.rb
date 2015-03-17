require_relative '../spec_helper'

describe 'IndexController' do
  it 'should process the get / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello from index!')
  end
end

describe 'Index2Controller' do
  it 'should process the get /index2 route' do
    get '/index2'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello from second index!')
  end
end
