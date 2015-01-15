
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/cell'

class CellTest < Minitest::Test
  def test_it_initially_has_nine_possibilities
    cell = Cell.new
    assert_equal [1,2,3,4,5,6,7,8,9], cell.possibilities
  end

  

end
