require 'sinatra'

get '/' do
  filepath = File.join(settings.public_folder, 'index.html')
  send_file(filepath)
end

get '/hello' do
  'Hello, my dude.'
end
