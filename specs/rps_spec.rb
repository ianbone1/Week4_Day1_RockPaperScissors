require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/RockPaperScissors.rb'

class TestRPS < Minitest::Test

  # @player1_name = options[:player1_name]
  # @player1_hand = options[:player1_hand].downcase
  # @player2_name = options[:player2_name]
  # @player2_hand = options[:player2_hand].downcase
  # "Player #{winner} played #{winning_hand} which beats #{looser} playing #{loosing_hand}"


  def test_RockPaper_rock_scissors
    rps = RockPaperScissors.new({:player1_name => "Ian", :player1_hand => "rock",
      :player2_name => "Bob", :player2_hand => "scissors"})
    result = rps.play()
    expected = "Player Ian played rock which beats Bob playing scissors"
    assert_equal(expected, result)
  end

  def test_RockPaper_rock_paper
    rps = RockPaperScissors.new({:player1_name => "Ian", :player1_hand => "rock",
      :player2_name => "Bob", :player2_hand => "paper"})
    result = rps.play()
    expected = "Player Bob played paper which beats Ian playing rock"
    assert_equal(expected, result)
  end

  def test_RockPaper_scissors_rock
    rps = RockPaperScissors.new({:player1_name => "Ian", :player1_hand => "scissors",
      :player2_name => "Bob", :player2_hand => "rock"})
    result = rps.play()
    expected = "Player Bob played rock which beats Ian playing scissors"
    assert_equal(expected, result)
  end

  def test_RockPaper_scissors_paper
    rps = RockPaperScissors.new({:player1_name => "Ian", :player1_hand => "scissors",
      :player2_name => "Bob", :player2_hand => "paper"})
    result = rps.play()
    expected = "Player Ian played scissors which beats Bob playing paper"
    assert_equal(expected, result)
  end

  def test_RockPaper_paper_rock
    rps = RockPaperScissors.new({:player1_name => "Ian", :player1_hand => "paper",
      :player2_name => "Bob", :player2_hand => "rock"})
    result = rps.play()
    expected = "Player Ian played paper which beats Bob playing rock"
    assert_equal(expected, result)
  end

  def test_RockPaper_paper_scissors
    rps = RockPaperScissors.new({:player1_name => "Ian", :player1_hand => "paper",
      :player2_name => "Bob", :player2_hand => "scissors"})
    result = rps.play()
    expected = "Player Bob played scissors which beats Ian playing paper"
    assert_equal(expected, result)
  end

  def test_RockPaper_scissors_scissors
    rps = RockPaperScissors.new({:player1_name => "Ian", :player1_hand => "scissors",
      :player2_name => "Bob", :player2_hand => "scissors"})
    result = rps.play()
    expected = "DRAW! Both players played the same hand!"
    assert_equal(expected, result)
  end

end
