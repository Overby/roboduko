require_relative '../lib/boardbuilder'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/row'
require '../lib/column'

class BoardTest < Minitest::Test
  def test_it_exists
    skip
    board = Board.new
    assert board
  end

  #following tests largely duplicative



  # def test_it_takes_array_of_arrays
  #   skip
  #   board = Board.new
  #   expected =
  #   actual =
  #   assert_equal [[input]],
  # end

  # def test_full_board_has_eighty_one_spots
  #   skip
  #   board = Board.new
  # end

  # def test_array_is_delimited_new_line
  #   skip
  #   board = Board.new
  #   expected_calc =
  #   actual_calc =
  #   assert_equal ,
  # end

  # def test_blank_spots_implemented_correct
  #   skip
  #   board = Board.new
  #
  # end

  # def test_it_implements_rows
  #   skip
  #   board = Board.new
  #   assert_equal 9, row.possibilities.length
  # end

  # def test_it_implements_columns
  #   skip
  #   board = Board.new
  #   assert_equal 9, col.possibilities.length
  # end

  # def test_it_implements_squares
  #   skip
  #   board = Board.new
  #   assert_equal
  # end

  # def test_only_accepts_integers_as_input
  #   skip
  #   board = Board.new
  # end
end
