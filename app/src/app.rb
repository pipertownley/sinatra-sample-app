require 'sinatra'
require 'sinatra/activerecord'

set :bind, '0.0.0.0'

class User < ActiveRecord::Base
end

class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :bind, '0.0.0.0'

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

  post '/users/' do
    @user = User.create!(params)
  end
end
