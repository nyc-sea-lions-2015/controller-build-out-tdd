require_relative '../spec_helper'

describe 'IndexController' do
  it 'should process the get / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello from index!')
  end

  it 'should process the post /try_a_post route' do
    post '/try_a_post'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include('Hello from index!')
  end

  it "should process the put /try_a_put route with_a_param=true" do
    put "/try_a_put"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Hello from index!")
  end

  it "should process the delete /try_a_delete route" do
    delete "/try_a_delete"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Hello from index!")
  end
end

describe 'Index2Controller' do
  it 'should process the get /index2 route' do
    get '/index2'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello from second index!')
  end
end

describe 'Index3Controller' do
  it 'should process the get /index3 route' do
    get '/index3'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Hello from third index!')
  end
end


