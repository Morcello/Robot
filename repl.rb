require_relative "robot"

robot = nil

loop do
  print "Enter the command: "
  puts "Place, move, left, right, report"
  command = gets.chomp
  if command =~ /place \d, \d, \S+/
    x = command[6].to_i
    y = command[9].to_i
    face = command[12..20].chomp.capitalize
    robot = Robot.new(x, y, face)
    puts "Нахожусь на меcте: #{x}, #{y}, #{face} "
  elsif command == 'move'
    robot.move
  elsif command == 'left'
    robot.left
  elsif command == 'right'
    robot.right
  elsif command == 'report'
    robot.report
    #puts "Доклад: #{x}, #{y}, #{face} "
  elsif command =~ /q|Q/
    break
  else
    puts "command not found"
  end
end
