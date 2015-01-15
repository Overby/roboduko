require_relative '../lib/play'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
#need to control game flow
#take input string of numbers
#plug in 0 for missing spot
#find correct digit for missing spot
#complete each row,col,sq accordingly
#flow through game, each piece filled in

class PlayTest < Minitest::Test
  def test_play_exists
    play = Play.new
    assert play
  end

  def test_it_solves_one_blank_cell_on_board
    skip
    play = Play.new
    game = File.readlines('/test')
  end
  # def test_play_solves
  #   skip
  #
  # end

  def test_row_plays_correctly
    skip
    play = Play.new
    #assert expected, actual
    assert
  end

  def test_column_plays_correctly
    skip
    play = Play.new

  end

  def test_square_plays_correctly
    skip

  end


  def test_board_evaluates_properly
    skip

  end

  def test_all_evaluations_work_properly
    skip

  end

  def test_each_spot_reference_functions
    skip

  end

  # def test_input_completes_local_grid
  #
  # end

  def test_missing_number_filled_in

  end

end
