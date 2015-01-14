require_relative '../lib/game'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
#need to control game flow
#take input string of numbers
#plug in 0 for missing spot
#find correct digit for missing spot
#complete each row,col,sq accordingly
#flow through game, each piece filled in

class GameTest < Minitest::Test
  def test_game_exists
    game = Game.new
    assert game
  end

  # def test_game_solves
  #   skip
  #
  # end

  def test_row_plays_correctly
    skip
    game = Game.new
    #assert expected, actual
    assert
  end

  def test_column_plays_correctly
    skip
    game = Game.new

  end

  def test_square_plays_correctly

  end


  def test_board_evaluates_properly

  end

  def test_all_evaluations_work_properly

  end

  def test_each_spot_reference_functions


  end

  # def test_input_completes_local_grid
  #
  # end

  def test_missing_number_filled_in

  end
  
end
