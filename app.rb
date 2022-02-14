require 'sinatra/base'
require 'sinatra/reloader'

class Bookmark < Sinatra::Base
  configure :development do
    # set :public_folder, File.expand_path('../public', __FILE__) >>> used for style.css
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmark' do 
    erb :bookmark_list
  end 

  run! if app_file == $0
end
