puts "Welcome to the Official Mars Rover's Controller Nasa Center"
puts "Please set the width and height dimension of the Plateau"
plateau_dimensions = gets.chomp.split(" ")
plateau = Plateau.new(plateau_dimensions)
puts "Please enter the starting point of the first Rover and the direction"
position = gets.chomp.split(" ")
puts "Please enter the instructions of the first Rover"
instructions = gets.chomp.to_s.split("")
rover1 = Rover.new(position, instructions, plateau)
puts "Please enter the  starting point of the second Rover and the direction:"
position = gets.chomp.split(" ")
puts "Please enter the movements of the second Rover"
instructions = gets.chomp.to_s.split("")
rover2 = Rover.new(position, instructions, plateau)