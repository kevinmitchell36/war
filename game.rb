class Game

  attr_reader :human_hand, :computer_hand

  def initialize
    @human_hand = []
    @computer_hand = []
  end

  def create_hands(deck)
    if deck.class != Array
      return "Not a valid deck"
    end
    index = 0
    while index < deck.length
      if index.even?
        @human_hand << deck[index]
      else
        @computer_hand << deck[index]
      end
      index = index + 1
    end
  end

end