require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'

class Bookmarkmanager < Sinatra::Base
  configure :development do
    # set :public_folder, File.expand_path('../public', __FILE__) >>> used for style.css
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @list = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/add' do
    erb :'bookmarks/add'
  end

  post '/bookmarks' do
    Bookmark.add(url: params[:url])
    @title = params[:title]
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
