require_relative "deck"

# Intro to player
puts "Hello, player! Shall we begin [y/n]"
deck = Deck.new

# Building deck
deck.create_deck

p deck.deck
deck.assign_values
puts
puts
puts
puts
puts
print "How many times would you like to shuffle the deck? "
choice = gets.chomp.to_i
deck.shuffle_deck(choice)
puts
puts
puts
puts
puts
puts
p deck.deck

puts "Shall we begin?"

