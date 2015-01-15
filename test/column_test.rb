require_relative '../lib/column'
require 'minitest/autorun'
require 'minitest/pride'

class ColumnTest < Minitest::Test
  def test_it_exists
    input = '123 56789'
    col = Column.new(input)
    assert col
  end

  def test_unsolvable_input_returns_original_col
    col = Column.new('123     9')
    assert_equal '123000009', col.evaluate
  end

  def test_col_with_nine_fills_in_empty_spots
    skip
    col = Column.new("1234567 9")
    assert_equal "8", col.missing_number
    assert_equal ("123456789"), col.evaluate
  end

  def test_column_has_nine_spots
    input = '123 56789'
    col = Column.new(input)
    assert_equal 9, col.possibilities.length
  end

  def test_col_spots_are_integers
    input = '123 56789'
    col = Column.new(input)
    assert col.input.first.is_a?(Integer)
  end

  def test_possibilities_in_poss_array_are_integers
    input = '123 56789'
    col = Column.new(input)
    assert col.possibilities.last.is_a?(Integer)
  end

  def test_poss_array_exists
    input = '123 56789'
    col = Column.new(input)
    assert col.possibilities
  end

  def test_it_takes_col_array_as_input
    input = '123 56789'
    col = Column.new(input)
    assert_equal input[8].to_i, col.input.length
  end

  def test_poss_array_has_nine_integers
    input = '123 56789'
    col = Column.new(input)
    assert_equal 9, col.possibilities.length
  end

  def test_it_reduces_all_possibilities
    input = '123 56789'
    col = Column.new(input)
    col.reduce_possibility
    assert_equal 1, col.possibilities.length
  end

  def test_it_solves_col_missing_one_spot
    input = '123 56789'
    col = Column.new(input)
    assert_equal 9, col.possibilities.length
  end

  def test_input_array_different_than_poss_array_data
    input = '123 56789'
    col = Column.new(input)
    refute_equal input, col.possibilities
  end

  def test_it_inserts_zeros_for_input_missing_spots
    input = '123 56789'
    col = Column.new(input)
    assert col.input.include?(0)
  end

end
