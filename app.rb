require 'sinatra'

get '/' do
  "Hello!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample 
  erb :random_cat
end

get '/named-cat' do
  erb :named_cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :named_cat
end
