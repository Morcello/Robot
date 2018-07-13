require "minitest/autorun"
require_relative "../robot"

class TestRobot < Minitest::Test
  def test_initialize
    @robot = Robot.new(2, 4, "North")
    assert_equal([2, 4, "North"], @robot.report)
    #puts "#{@robot.report}"
  end

  def test_move
    @robot = Robot.new(3, 3, "West")
    assert_equal([3, 3, "West"], @robot.report)
    assert_equal([3, 3, "West"], @robot.report)
    assert_equal([3, 3, "West"], @robot.report)
    assert_equal([3, 3, "West"], @robot.report)
    #puts "#{@robot.report}"
  end

  def test_left
    @robot = Robot.new(2, 4, "West")
    assert_equal([2, 4, "West"], @robot.report)
    #puts "#{@robot.report}"
  end

  def test_right
    @robot = Robot.new(1, 1, "North")
    assert_equal([1, 1, "North"], @robot.report)
    #puts "#{@robot.report}"
  end
end
