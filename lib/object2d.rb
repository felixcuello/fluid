# frozen_string_literal: true

# Particle class
class Object2d
  attr_accessor :x, :y, :vx, :vy

  def initialize(x: 0, y: 0, vx: 0, vy: 0) # rubocop:disable Naming/MethodParameterName
    @x = x
    @y = y
    @vx = vx
    @vy = vy
  end
end
