#come back to skip; fix eval

require_relative '../lib/square'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class SquareTest < Minitest::Test
  def test_it_exists
    input = '123 56789'
    square = Square.new(input)
    assert square
  end

  def test_square_has_nine_spots
    input = '123 56789'
    square = Square.new(input)
    assert_equal 9, square.possibilities.length
  end

  def test_unsolvable_input_returns_original_square
    square = Square.new('123     9')
    assert_equal '123000009', square.evaluate
  end

  def test_square_with_nine_fills_in_empty_spot
    skip
    square = Square.new("1234567 9")
    assert_equal "8", square.missing_number
    assert_equal ("123456789"), square.evaluate
  end

  def test_square_has_nine_spots
    input = '123 56789'
    square = Square.new(input)
    assert_equal 9, square.possibilities.length
  end

  def test_square_spots_are_integers
    input = '123 56789'
    square = Square.new(input)
    assert square.input.first.is_a?(Integer)
  end

  def test_possibilities_in_poss_array_are_integers
    input = '123 56789'
    square = Square.new(input)
    assert square.possibilities.last.is_a?(Integer)
  end

  def test_poss_array_exists
    input = '123 56789'
    square = Square.new(input)
    assert square.possibilities
  end

  def test_it_takes_square_array_as_input
    input = '123 56789'
    square = Square.new(input)
    assert_equal input[8].to_i, square.input.length
  end

  def test_poss_array_has_nine_integers
    input = '123 56789'
    square = Square.new(input)
    assert_equal 9, square.possibilities.length
  end

  def test_it_reduces_all_possibilities
    input = '123 56789'
    square = Square.new(input)
    square.reduce_possibility
    assert_equal 1, square.possibilities.length
  end

  def test_it_solves_square_missing_one_spot
    input = '123 56789'
    square = Square.new(input)
    assert_equal 9, square.possibilities.length
  end

  def test_input_array_different_than_poss_array_data
    input = '123 56789'
    square = Square.new(input)
    refute_equal input, square.possibilities
  end

  def test_it_inserts_zeros_for_input_missing_spots
    input = '123 56789'
    square = Square.new(input)
    assert square.input.include?(0)
  end
end
