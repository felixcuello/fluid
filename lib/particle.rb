# frozen_string_literal: true

require 'object2d'

# Particle class
class Particle < Object2d
  attr_accessor :color

  def initialize(x: 0, y: 0, vx: 0, vy: 0) # rubocop:disable Naming/MethodParameterName
    super

    @color = '#00A0A0'
  end
end
