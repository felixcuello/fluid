# frozen_string_literal: true

$LOAD_PATH.unshift('./lib')

require 'world'
require 'particle'

world = World.instance

100.times do
  x = rand(640)
  y = rand(480)
  world.add_particle(Particle.new(x:, y:))
end

world.spin!
