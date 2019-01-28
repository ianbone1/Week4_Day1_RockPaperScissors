class RockPaperScissors

  def initialize(options)
    @player1_name = options[:player1_name]
    @player1_hand = options[:player1_hand].downcase
    @player2_name = options[:player2_name]
    @player2_hand = options[:player2_hand].downcase
  end

  def winner(winner, winning_hand, looser, loosing_hand)
    return "Player #{winner} played #{winning_hand} which beats #{looser} playing #{loosing_hand}"
  end

  def draw()
    return "DRAW! Both players played the same hand!"
  end

  def play()
    if @player1_hand == "rock" && @player2_hand == "scissors"
        return winner(@player1_name, @player1_hand, @player2_name, @player2_hand)
    elsif @player1_hand == "rock" && @player2_hand == "paper"
        return winner(@player2_name, @player2_hand, @player1_name, @player1_hand)
    elsif @player1_hand == "paper" && @player2_hand == "rock"
        return winner(@player1_name, @player1_hand, @player2_name, @player2_hand)
    elsif @player1_hand == "paper" && @player2_hand == "scissors"
        return winner(@player2_name, @player2_hand, @player1_name, @player1_hand)
    elsif @player1_hand == "scissors" && @player2_hand == "paper"
        return winner(@player1_name, @player1_hand, @player2_name, @player2_hand)
    elsif @player1_hand == "scissors" && @player2_hand == "rock"
        return winner(@player2_name, @player2_hand, @player1_name, @player1_hand)
    else
      return draw()
    end
  end

end
