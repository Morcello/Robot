require "minitest/autorun"
require_relative "../robot"

class TestRobot < Minitest::Test
  def setup
    @robot = Robot.new(1, 1, "North")
  end

  def test_initialize
    @robot = Robot.new(0, 0, "North")
    assert_equal("North", "North")
  end

  def test_move
    @robot = Robot.new(0, 0, "North")
    assert_equal(2, 2)
  end

  def test_move_2
    @robot = Robot.new(0, 0, "North")
    assert_equal(3, 3)
  end

  def test_move_3
    @robot = Robot.new(0, 0, "North")
    assert_equal(1, 1)
  end

  def test_move_4
    @robot = Robot.new(0, 0, "North")
    assert_equal(0, 0)
  end

  def test_left
    @robot = Robot.new(0, 0, "North")
    assert_equal("North", "North")
  end

  def test_right
    @robot = Robot.new(0, 0, "North")
    assert_equal("North", "North")
  end
end
