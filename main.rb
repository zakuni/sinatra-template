require 'sinatra'
require 'slim'
require 'coffee-script'

Slim::Engine.set_default_options :pretty => true

get '/' do
  slim :index
end

get '/main.js' do
  coffee :main
end

get '/hello/:name' do
  "Hello #{params[:name]}"
end

post '/' do
  '.. create something ..'
end

put '/' do
  '.. update something ..'
end

delete '/' do
  '.. annihilate something ..'
end

options '/' do
  '.. appease something ..'
end

