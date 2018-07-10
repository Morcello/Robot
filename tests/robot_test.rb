require "minitest/autorun"
require_relative "../robot"

class TestRobot < Minitest::Test
  def setup
    @robot = Robot.new
  end

  def initialize
    @robot = Robot.new
    assert_equal("North", "North")
  end

  def test_move
    @robot = Robot.new
    assert_equal(1, 2)
  end

  def test_move
    @robot = Robot.new
    assert_equal(2, 3)
  end

  def test_move
    @robot = Robot.new
    assert_equal(3, 4)
  end

  def test_move
    @robot = Robot.new
    assert_equal(4, 4)
  end

  def test_left
    @robot = Robot.new
    assert_equal("North", "North")
  end

  def test_right
    @robot = Robot.new
    assert_equal("North", "North")
  end
end
