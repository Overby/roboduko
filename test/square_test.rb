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
    square = Square.new("1234567 9")
    assert_equal "8", square.missing_number
    assert_equal ("123456789"), square.evaluate
  end
end
