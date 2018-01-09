require_relative '../spec_helper.rb'
require_relative '../../repo_explorer.rb'

describe 'repo_explorer CRUD methods' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'greets the user' do
    get '/hello'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello, my dude.')
  end

  it 'serves index.html' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.headers['Content-Type']).to eq('text/html;charset=utf-8')
  end
end
