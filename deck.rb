class Deck
  
  attr_reader :suits, :ranks, :deck, :values

  def initialize
    @suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
    @ranks = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    @deck = []
    @values = Hash.new(0)
  end
  
  def create_deck
    index_suits = 0
    while index_suits < @suits.length
      index_ranks = 0
      while index_ranks < @ranks.length
        @deck << "#{@ranks[index_ranks]} of #{@suits[index_suits]}"
        index_ranks += 1
      end
      index_suits += 1
    end
    return @deck
  end

  def shuffle_deck(choice)
    choice.times do
      @deck = @deck.shuffle()
    end
    return @deck
  end

  
  def assign_values
    num_value = 1
    @deck.each do |card| 
      if num_value == 14
        num_value = 1
      end
      @values[card] = @values[card] + num_value
      num_value += 1
    end
    return @values
  end

  

end




