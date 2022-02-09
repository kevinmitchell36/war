require_relative "deck"
require_relative "game"

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
# print "How many times would you like to shuffle the deck? "
choice = 3
deck.shuffle_deck(choice)
puts
puts
puts
puts
puts
puts
game_deck = deck.deck

puts "Shall we begin?"

game = Game.new
game.create_hands(game_deck)
p "Human hand - #{game.human_hand.length}" 
puts 
puts 
puts 
puts 
puts
p "Computer hand - #{game.computer_hand.length}" 