require "bundler/setup"
require "sinatra"
require "sinatra/base"
require "sinatra/reloader" if development?

class Battle < Sinatra::Base
 
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect '/start'
  end

  get '/start' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]
    erb :start
  end 
  
# start the server if ruby file executed directly
  run! if app_file ==$0
end