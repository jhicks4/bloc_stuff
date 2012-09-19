require 'sinatra'

get '/hello/:name/:city' do
  "Hello there, #{params[:name].capitalize} from #{params[:city]}"
end

get '/about' do
  'A little about me.'
end
get '/more/*' do
  "The page #{params[:splat]} could not be found!!!! \ntry again"
end

get '/form' do 
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  halt 404, 'page not found'
end
