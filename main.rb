Slim::Engine.set_default_options :pretty => true

class App < Sinatra::Base
  configure :development do
    Bundler.require :development
    register Sinatra::Reloader
  end

  get '/' do
    slim :index
  end

  get '/main.css' do
    sass :main
  end

  get '/main.js' do
    coffee :main
  end

  get '/hello/:name' do
    "Hello #{params[:name]}"
  end

  post '/' do
    "#{params[:text]}"
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
end
