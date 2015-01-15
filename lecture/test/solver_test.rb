require_relative './lib/solver'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class SolverTest < Minitest::Test
  def test_it_solves_a_board_with_one_blank_cell
    puzzle = File.read('./test/support/board_missing_one_cell.txt').rstrip
    solver = Solver.new
    calculated_solution = solver.solve(puzzle)
    expected_solution = File.read('./test/support/board_missing_one_cell.txt').rstrip
    assert_equal expected_solution, calculated_solution
  end

  def test_it_us_initially_known
    cell = Cell.new
    refute cell.known?
  end

  def test_it_can_store_a_value
    cell = Cell.new
    cell.value = 5
    cell.possibilities
    assert cell.known?
  end

  def test_it_can_lose_possibilities
    cell = Cell.new
    cell.remove_possibility(5)
    assert_equal 8, cell.possibilities.count
  end

  def test_it_sets_the_value_when_there_is_only_one_possibility
    cell = Cell.new
    (1..9).each do |number|
      refute cell.known?
      cell.remove_possibillity(number)
    end

    assert cell_known?
    assert_equal 9, cell.value
  end

end
