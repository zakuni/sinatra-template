Slim::Engine.set_default_options :pretty => true

class App < Sinatra::Base
  register Padrino::Sprockets
  sprockets

  configure :development do
    Bundler.require :development
    register Sinatra::Reloader
  end

  get '/' do
    slim :index, :locals => {:title => "Sinatra Template"}
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
