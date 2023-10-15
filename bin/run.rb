# frozen_string_literal: true

$LOAD_PATH.unshift('./lib')

require 'world'
require 'particle'

world = World.instance

rand(10..50).times do
  x = rand(640)
  y = rand(480)
  world.add_object(Particle.new(x:, y:))
end

world.spin!
