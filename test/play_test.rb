require_relative '../lib/play'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
#take input string of numbers
#plug in 0 for missing spot
#find correct digit for missing spot

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
  # def test_play_solves_first_game
  #   skip
  #
  # end

  def test_row_plays_correctly
    skip
    play = Play.new
    assert
  end

  def test_all_evaluate_methods_work_properly
    skip
    play = Play.new
  end

  def test_each_spot_reference_functions
    skip
    play = Play.new

  end

  def test_missing_number_filled_in
    skip
    play = Play.new
  end

end
