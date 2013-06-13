require './app'

use Rack::ShowExceptions
use Rack::Deflater
Slim::Engine.set_default_options pretty: true
Slim::Engine.default_options[:sort_attrs] = true
Slim::Engine.default_options[:tabsize] = 2
Slim::Engine.default_options[:format] = :html5

run App
