require 'test/unit'
require 'cats'

class MeowsTest < Test::Unit::TestCase
  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_meow
    m = Cats::Meows.new()
    assert_true(m.meow == '~=[,,_,,]:3', 'Meow is set to njancat')
  end
end
