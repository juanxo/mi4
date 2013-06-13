require 'rubygems'
require 'sinatra/base'
require 'sinatra/bundles'
require 'slim'
require 'sass'
require 'coffee-script'
require './helpers/asset_versioning'


class ScssHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/views/scss'

  get '/css/*-*.css' do |name, mtime|
    content_type 'text/css'
    scss name.to_sym
  end

end

class CoffeeHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/views/coffee'

  get '/js/*-*.js' do |name, mtime|
    content_type 'text/javascript'
    coffee name.to_sym
  end

end


class App < Sinatra::Base
  use ScssHandler
  use CoffeeHandler

  include AssetVersioning

  set :views, File.dirname(__FILE__) + '/views'

  get '/' do
    @title = "Becario Macho 4"
    slim :index
  end

  get '/marketplace' do
    @title = "Becario Macho 4 - Marketplace"
    slim :marketplace
  end

  get '/blank' do
    content_type 'text/plain'
  end


end
