require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  get '/' do
     erb :index
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    p $player_1
    redirect '/play'
  end

  get '/play' do
    p "3"
    @player1 = $player_1
    @player2 = $player_2
    erb(:play)

  end

  get "/attack" do
    p "5"
    @player1 = $player_1
    @player2 = $player_2
    @player1.attack(@player2)
    erb(:attack)
  end

  # post "/attack" do
  #   @player1 = $player_1.name
  #   @player2 = $player_2.name
  #   redirect (:play)
  # end


end
