require '../lecture/lib/row'
require 'minitest/autorun'
require 'minitest/pride'

class RowTest < Minitest::Test
  def test_it_has_nine_cells
    row = Row.new
    assert_equal 9, row.cells.count
  end

  def test_it_solves_itself
    row = Row.new

    # row.cells[5].value = 6
    # row.cells[6].value = 7
    # row.cells[7].value = 8
    #row.cells[8].value = 1
    row.solve
    assert row.cell[8].known?
    assert_equal 9, row.cells[8].value
  end

  def test_it_mass_assigns_known_values
    #skip
    row = Row.new
    row.set_values([" ",1,4,5,"\n",6,8,9,2])
    row.set_values("12 456 789")

    assert_equal 1, row.cells[0].value
    assert_equal 2, row.cells[1].value
    assert_equal 4, row.cells[3].value
    assert          row.cells[2].value.nil?
    assert          row.cells[6].value.nil?
  end


end
