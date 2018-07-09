class Robot
  DIRECTION = %w[North East South West]

  def initialize(x, y, face)
    @x, @y, @face = x, y, DIRECTION.index(face)
  end

  def move
    @y += 1 if @face == 0
    @x += 1 if @face == 3
    @y -= 1 if @face == 2
    @x -= 1 if @face == 1
  end

  def left
    @face = (@face - 1) % 4
  end

  def right
    @face = (@face + 1) % 4
  end

  def report
    [@x, @y, DIRECTION[@face]]
  end
end
