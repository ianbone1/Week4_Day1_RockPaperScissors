require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/RockPaperScissors.rb')
also_reload('./models/*')

get '/' do
  erb( :home )
end

get '/about' do
  erb( :about )
end

get '/rps/:player1/:player1_hand/:player2/:player2_hand' do
  game = RockPaperScissors.new({
    :player1_name => params[:player1],
    :player1_hand => params[:player1_hand],
    :player2_name => params[:player2],
    :player2_hand => params[:player2_hand]})
  @winner = game.play()
  # puts @winner
  # "#{@winner}"
  erb( :result )
end
