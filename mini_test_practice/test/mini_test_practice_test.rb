require 'test_helper'
require 'mini_test_practice'
class MiniTestPracticeTest < Minitest::Test
  def setup
  @main = MinitestPracticeTest::Main.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end
  def 

  def test_it_does_something_useful
    assert false
  end
end
