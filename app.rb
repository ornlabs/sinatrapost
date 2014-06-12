require 'sinatra'

get '/' do
  File.read('index.html')
end

post '/demo' do
  "The username is #{params['username']} and the password is #{params['password']}"
end
