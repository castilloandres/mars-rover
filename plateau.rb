require_relative 'rover'

class Plateau
  attr_accessor :height, :width
  def initialize(plateau_dimensions)
    @height = plateau_dimensions[0].to_i
    @width  = plateau_dimensions[1].to_i
  end

end


