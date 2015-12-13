require_relative 'rover'
require_relative 'plateau'

puts "Welcome to the Official Mars Rover's Controller Nasa Center"
puts "Please set the width and height dimension of the Plateau:"
plateau_dimensions = gets.chomp.split(" ")
plateau = Plateau.new(plateau_dimensions)
puts "Please enter the starting point of the first Rover and the direction:"
position = gets.chomp.split(" ")
puts "Please enter the instructions of the first Rover:"
instructions = gets.chomp.to_s.split("")
rover1 = Rover.new(position, instructions, plateau)
puts "Please enter the starting point of the second Rover and the direction:"
position = gets.chomp.split(" ")
puts "Please enter the instructions of the second Rover:"
instructions = gets.chomp.to_s.split("")
rover2 = Rover.new(position, instructions, plateau)


rover1.read_instructions
rover2.read_instructions

puts "-------------------------------------------------"
puts "Position [X,Y] and orientation N,S,E,O of Rover 1:"
print rover1.position
p rover1.orientation

puts "Position [X,Y] and orientation N,S,E,O of Rover 2:"
print rover2.position
p rover2.orientation
puts "-------------------------------------------------"