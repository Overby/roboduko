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

  def test_row_spots_are_integers
    input = '123 56789'
    row = Row.new(input)
    assert row.input.first.is_a?(Integer)
  end

  def test_possibility_in_poss_array_are_integers
    input = '123 56789'
    row = Row.new(input)
    assert row.possibilities.last.is_a?(Integer)
  end

  def test_poss_array_exists
    input = '123 56789'
    row = Row.new(input)
    assert row.possibilities
  end

  def test_it_takes_row_array_as_input   #necessary?
    #skip
    input = '123 56789'
    row = Row.new(input)
    assert_equal input[8].to_i, row.input.length
#assert_kind_of
 end # take array with index of 9

  def test_possibilities_array_has_nine_numbers
    input = '123 56789'  #use zero to fill in?
    row = Row.new(input) #don't we want 8 in input and solve for 9th?
    assert_equal 9, row.possibilities.length
  end

  def test_it_reduces_all_possibilities
    input = '123 56789'
    row = Row.new(input)
    row.reduce_possibility
    assert_equal 1, row.possibilities.length
  end

  def test_it_solves_row_missing_one_spot
    input = '123 56789'
    row = Row.new(input)
    assert_equal 9, row.possibilities.length
  end

  def tests
    skip
    refute_match input != possibilities
    input not same as poss arrays
  end

  def test
    skip
    assert each input array has 0 in missing spot
  end

  def test
    skip
    assert...ensure 0 replaced in each case by correct number in missing spot
  end

  def test
    skip

  end

end
