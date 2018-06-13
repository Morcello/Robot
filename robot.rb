class Robot
  DIRECTION = %w[North East South West]

  def initialize (x, y, face)
    @x, @y, @face = x, y, DIRECTION.index(face)
  end

  def move
    if @face == 0
      @y += 1
    end
    if @face == 2
      @y -= 1
    end
    if @face == 3
      @x += 1
    end
    if @face == 1
      @x -= 1
    end
  end

  def left
    @face = ( @face - 1 ) % 5
  end

  def right
    @face = ( @face + 1 ) % 5
  end

  def report
    face = DIRECTION[@face]
    puts "Доклад: #{@x}, #{@y}, #{@face} "
  end
end
