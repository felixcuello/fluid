# frozen_string_literal: true

require 'ruby2d'
require 'singleton'

DEFAULT_WIDTH = 640
DEFAULT_HEIGHT = 480
DROP_SIZE = 2

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

  def add_drop(drop)
    @objects << drop
  end

  def randomize_particles!(num_particles)
    num_particles.times do
      add_object(Drop.new(x: rand(@width), y: rand(@height)))
    end
  end

  # Something has to start the world spinning
  def spin!
    Window.set title: 'Fluid Simulation'

    objects.each do |drop|
      Square.new(x: drop.x,
                 y: drop.y,
                 size: DROP_SIZE,
                 color: drop.color)
    end

    #    tick = 0
    #    Window.update do
    #      drop.y += DROP_SIZE
    #      tick += 1
    #    end

    Window.show
  end
end
