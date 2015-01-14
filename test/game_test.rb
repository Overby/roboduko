require_relative '../lib/game'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

#need to control game flow
#take input string of numbers
#plug in 0 for missing spot
#find correct digit for missing spot
#complete each row,col,sq accordingly




class GameTest < Minitest::Test

  def test_game_exists
    skip
    #board = Board.new
    #player = Player.new
    game = Game.new
    assert game
  end

  def test_game_plays_correctly
    skip

  end

  def test_player_can_win
    skip

  end

end
