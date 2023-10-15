# frozen_string_literal: true

require 'ruby2d'
require 'singleton'

DEFAULT_WIDTH = 640
DEFAULT_HEIGHT = 480

# This class hold the elements of the world and produces a tick to update elements
class World
  attr_accessor :objects
  attr_reader :width, :height

  include Singleton

  def initialize(width: DEFAULT_WIDTH, height: DEFAULT_HEIGHT)
    @objects = []
    @width = width
    @height = height
  end

  def add_object(object)
    @objects << object
  end

  alias add_particle add_object

  def randomize_particles!(num_particles)
    num_particles.times do
      add_object(Particle.new(x: rand(@width), y: rand(@height)))
    end
  end

  # Something has to start the world spinning
  def spin!
    Window.set title: 'Fluid Simulation'

    Window.show
  end
end
