require 'test/unit'
require 'pp'

class MeowTest < Test::Unit::TestCase
  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_meow
    m = Cats::Meow.new()
    assert_true(m.meow == '(=^ェ^=)', 'Meow is set to happycat')
  end

  def test_whiskers
    m = Cats::Meow.new()
    m.times = 89
    output = capture_output do m.whiskers end
    assert_match(Regexp.new('door too wide'), output[0], 'Door too wide if cat is less than 90 wide')

    m.times = 90
    output = capture_output do m.whiskers end
    assert_not_match(Regexp.new('door too wide'), output[0], 'Door NOT too wide if cat is more than 89 wide')
  end
end
