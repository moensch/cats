#!/usr/bin/env/ruby
require 'cats'
require_relative '../bin/make_go'
require 'test/unit'

class MakeGoTest < Test::Unit::TestCase
  def setup
    @re_happy = Regexp.new(Regexp.escape("(=^ェ^=)"))
    @re_njan = Regexp.new(Regexp.escape("~=[,,_,,]:3"))
  end
  def teardown
    # Reset the two env vars after each test
    ENV['BRANCH'] = nil
    ENV['ALLCATS'] = nil
  end

  def test_branch_master_allcats_nil
    ENV['BRANCH'] = 'master'
    output = capture_output do MakeGo.run end
    assert_match(@re_happy, output[0], "Happy cat is printed")
    assert_not_match(@re_njan, output[0], "Njan cat is not printed")
  end

  def test_branch_master_allcats_no
    ENV['BRANCH'] = 'master'
    ENV['ALLCATS'] = 'no'
    output = capture_output do MakeGo.run end
    assert_match(@re_happy, output[0], "Happy cat is printed")
    assert_not_match(@re_njan, output[0], "Njan cat is not printed")
  end

  def test_branch_master_allcats_yes
    ENV['BRANCH'] = 'master'
    ENV['ALLCATS'] = 'yes'
    output = capture_output do MakeGo.run end
    assert_match(@re_happy, output[0], "Happy cat is printed")
    assert_match(@re_njan, output[0], "Njan cat is printed")
  end

  def test_branch_other_allcats_nil
    ENV['BRANCH'] = 'other'
    output = capture_output do MakeGo.run end
    assert_not_match(@re_happy, output[0], "Happy cat is not printed")
    assert_match(@re_njan, output[0], "Njan cat is printed")
  end

  def test_branch_other_allcats_no
    ENV['BRANCH'] = 'other'
    ENV['ALLCATS'] = 'no'
    output = capture_output do MakeGo.run end
    assert_not_match(@re_happy, output[0], "Happy cat is not printed")
    assert_match(@re_njan, output[0], "Njan cat is printed")
  end

  def test_branch_other_allcats_yes
    ENV['BRANCH'] = 'other'
    ENV['ALLCATS'] = 'yes'
    output = capture_output do MakeGo.run end
    assert_match(@re_happy, output[0], "Happy cat is printed")
    assert_match(@re_njan, output[0], "Njan cat is printed")
  end

  def test_branch_nil_allcats_nil
    output = capture_output do MakeGo.run end
    assert_not_match(@re_happy, output[0], "Happy cat is not printed")
    assert_not_match(@re_njan, output[0], "Njan cat is printed")
  end

  def test_branch_nil_allcats_no
    ENV['ALLCATS'] = 'no'
    output = capture_output do MakeGo.run end
    assert_not_match(@re_happy, output[0], "Happy cat is not printed")
    assert_not_match(@re_njan, output[0], "Njan cat is printed")
  end

  def test_branch_nil_allcats_yes
    ENV['ALLCATS'] = 'yes'
    output = capture_output do MakeGo.run end
    assert_match(@re_happy, output[0], "Happy cat is printed")
    assert_match(@re_njan, output[0], "Njan cat is printed")
  end

end
