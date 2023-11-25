# frozen_string_literal: true

# Object 2d class
class Object2d
  attr_accessor :x, :y, :vx, :vy, :color

  def initialize(x: 0, y: 0, vx: 0, vy: 0) # rubocop:disable Naming/MethodParameterName
    @x = x
    @y = y
    @vx = vx
    @vy = vy

    @color = 'random'
  end
end
