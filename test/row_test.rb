require_relative '../lib/row'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RowTest < Minitest::Test
  def test_it_exists
    input = '123 56789'
    row = Row.new(input)
    assert row
  end

  def test_row_has_nine_spots
    input = '123 56789'
    row = Row.new(input)
    assert_equal 9, row.possibilities.length
  end

  def test_unsolvable_input_returns_original_row
    row = Row.new('123     9')
    assert_equal '123000009', row.evaluate
  end

  def test_row_with_nine_fills_in_empty_spot
    row = Row.new("1234567 9")
    assert_equal "8", row.missing_number
    assert_equal ("123456789"), row.evaluate
  end

  # def test_row_spots_are_integers
  #   input = '123 56789'
  #   row = Row.new(input)
  #   assert row.input.first.is_a?(Integer)
  # end
  #
  # def test_possibility_in_poss_array_are_integers
  #   input = '123 56789'
  #   row = Row.new(input)
  #   assert row.possibilities.last.is_a?(Integer)
  # end
  #
  # def test_poss_array_exists
  #   input = '123 56789'
  #   row = Row.new(input)
  #   assert row.possibilities
  # end
  #
  # def test_it_takes_row_array_as_input
  #   input = '123 56789'
  #   row = Row.new(input)
  #   #input = Array.new
  #   assert_equal input[8].to_i, row.input.length
  #   end
  #
  # def test_possibilities_array_has_nine_numbers
  #   input = '123 56789'
  #   row = Row.new(input)
  #   assert_equal 9, row.possibilities.length
  # end
  #
  # def test_it_reduces_all_possibilities
  #   input = '123 56789'
  #   row = Row.new(input)
  #   row.reduce_possibility
  #   assert_equal 1, row.possibilities.length
  # end
  #
  # def test_it_solves_row_missing_one_spot
  #   input = '123 56789'
  #   row = Row.new(input)
  #   assert_equal 9, row.possibilities.length
  # end
  #
  # def test_it_knows_input_array_different_than_poss_array_data
  #   input = '123 56789'
  #   row = Row.new(input)
  #   refute_equal input, row.possibilities
  # end
  #
  # def test_it_inserts_zeros_for_input_missing_spots
  #   input = '123 56789'
  #   row = Row.new(input)
  #   assert row.input.include?(0)
  # end



end
