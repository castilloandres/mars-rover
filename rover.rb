class Rover
  attr_accessor :position, :orientation, :instructions, :instructions_hash, :plateau
  def initialize(position, instructions, plateau)
    @position = [position[0].to_i, position[1].to_i]
    @orientation = position[2].to_s
    @instructions = instructions
    @instructions_hash = {
      "L" => lambda {move_left},
      "R" => lambda {move_right},
      "M" => lambda {move_forward}
    }
    @plateau = plateau
  end

  def move_forward
  end

  def move_left
  end

  def move_right
  end

  def read_instructions
  end

   def verify_bounds
   end
end