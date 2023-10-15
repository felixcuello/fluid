# frozen_string_literal: true

# This models the physics of the system
class Physics
  attr_accessor :gravity

  def initialize(gravity: 9.8)
    @gravity = gravity
  end
end
