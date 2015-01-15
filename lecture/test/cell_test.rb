#need to correct file path for files
require 'minitest/autorun'    # => true
require 'minitest/pride'      # => true
require 'pry'                 # => true
require "./lecture/lib/cell"  # ~> LoadError: cannot load such file -- ./lecture/lib/cell

class CellTest < Minitest::Test
  def test_it_initially_has_nine_possibilities
    cell = Cell.new
    assert_equal [1,2,3,4,5,6,7,8,9], cell.possibilities
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

# >> Run options: --seed 9881
# >>
# >> # Running:
# >>
# >>
# >>
# >> [38;5;154mF[0m[38;5;154ma[0m[38;5;148mb[0m[38;5;184mu[0m[38;5;184ml[0m[38;5;214mo[0m[38;5;214mu[0m[38;5;208ms[0m[38;5;208m [0m[38;5;203mr[0m[38;5;203mu[0m[38;5;198mn[0m in 0.000877s, 0.0000 runs/s, 0.0000 assertions/s.
# >>
# >> 0 runs, 0 assertions, 0 failures, 0 errors, 0 skips

# ~> LoadError
# ~> cannot load such file -- ./lecture/lib/cell
# ~>
# ~> /Users/andrewoverby/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/andrewoverby/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/andrewoverby/turing/module_one/robodoku/lecture/test/cell_test.rb:5:in `<main>'
