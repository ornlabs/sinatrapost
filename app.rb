require 'sinatra'

set :sessions, true

get '/' do
  File.read('index.html')
end

post '/demo' do
  "The username is #{params['username']} and the password is #{params['password']}"
  session[:userid] = params['username']
  session[:token] = 'token here'
  redirect to '/videos'
end

get '/videos' do
  "List of videos for #{session[:userid]} with token #{session[:token]}"
end
