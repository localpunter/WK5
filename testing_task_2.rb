### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

# require_relative('card.rb')
class CardGame
  attr_reader :suit, :value

def initialize(suit, value)
  @suit = suit
  @value = value;
end

  def checkforAce(card)
    if card == 1
      return true
    else
      return false
    end
  end

  def highest_card(card1, card2)
    if card1 > card2
      return card1
    else
      card2
    end
  end

  def self.cards_total(cards)
    total = 0
    for card in cards
      total += card.value
      print card.to_s
      return "You have a total of" + total.to_s
    end
  end

end
