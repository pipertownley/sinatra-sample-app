require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/reloader"

set :bind, '0.0.0.0'
set :port, 3000

class User < ActiveRecord::Base
end

class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  configure :development do
    register Sinatra::Reloader
  end

  before do
    content_type :json
  end

  get '/' do
    'Hello!'
  end

  get '/:id' do
    "Hello params[:id]"
  end

  get '/users/?' do
    @users = User.all
    @users.to_json
  end

  get '/users/:id/?' do
    @user = User.find_by_id(params[:id])
    @user.to_json
  end
end
