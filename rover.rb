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
    step_forward ={
      "N" => [0,1],
      "O" => [-1,0],
      "S" => [0,-1],
      "E" => [1,0]
    }
   @position[0] = @position[0] + step_forward[@orientation][0]
   @position[1] = @position[1] + step_forward[@orientation][1]
  end

  def move_left
      move_orientation_left ={
      "N" => "O",
      "O" => "S",
      "S" => "E",
      "E" => "N"
    }
    @orientation = move_orientation_left[@orientation]
  end

  def move_right
     move_orientation_right ={
      "N" => "E",
      "E" => "S",
      "S" => "O",
      "O" => "N"
    }
    @orientation = move_orientation_right[@orientation]
  end

  def read_instructions
    @instructions.each do |instruction|
       @instructions_hash[instruction].call
    end
  end

   def verify_bounds
   end
end
