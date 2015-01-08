require 'SimpleCov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/row'

class RowTest < Minitest::Test

  def test_it_exists
    row = Row.new
    assert row
  end
  


end
