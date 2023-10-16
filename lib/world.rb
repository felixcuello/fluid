# frozen_string_literal: true

require 'ruby2d'
require 'singleton'

DEFAULT_WIDTH = 640
DEFAULT_HEIGHT = 480
PARTICLE_SIZE = 2

# This class hold the elements of the world and produces a tick to update elements
class World
  attr_accessor :particles
  attr_reader :width, :height

  include Singleton

  def initialize(width: DEFAULT_WIDTH, height: DEFAULT_HEIGHT)
    @particles = []
    @width = width
    @height = height
  end

  def add_particle(particle)
    @particles << particle
  end

  def randomize_particles!(num_particles)
    num_particles.times do
      add_object(Particle.new(x: rand(@width), y: rand(@height)))
    end
  end

  # Something has to start the world spinning
  def spin!
    Window.set title: 'Fluid Simulation'

    particles.each do |particle|
      Square.new(x: particle.x,
                 y: particle.y,
                 size: PARTICLE_SIZE,
                 color: particle.color)
    end

    #    tick = 0
    #    Window.update do
    #      particle.y += PARTICLE_SIZE
    #      tick += 1
    #    end

    Window.show
  end
end
