# frozen_string_literal: true

DEFAULT_WIDTH = 640
DEFAULT_HEIGHT = 480

# This class hold the elements of the world and produces a tick to update elements
class World
  attr_accessor :objects
  attr_reader :width, :height

  def initialize(width: DEFAULT_WIDTH, height: DEFAULT_HEIGHT)
    @objects = []
    @width = width
    @height = height
  end

  def add_object(object)
    @objects << object
  end
end
