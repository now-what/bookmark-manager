require 'sinatra/base'
require 'sinatra/reloader'

class Bookmark < Sinatra::Base
  configure :development do
    # set :public_folder, File.expand_path('../public', __FILE__) >>> used for style.css
    register Sinatra::Reloader
  end

  get '/' do
    'This is your Bookmark manager'
  end

  run! if app_file == $0
end
