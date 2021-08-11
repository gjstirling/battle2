require 'sinatra'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_one=params[:player_one]
    @player_two=params[:player_two]
    erb :start
  end
end