require('minitest/autorun')
require('minitest/rg')
require_relative('../testing_task_2')

class CardGameTest < MiniTest::Test

def test_checkforAce
  card = CardGame.new('spade', 2)
  card.checkforAce(2)
  assert_equal(2, card.value)

end

def test_highest_card
  card1 = CardGame.new('diamond', 10)
  card2 = CardGame.new('spade', 5)
  card1.highest_card(card1.value, card2.value)
  assert_equal(10, card1.value)
end

def test_cards_total
  hand = {'spade' => 1, 'club' => 5, 'club' => 8}
  CardGame.cards_total(hand)
  assert_equal(14, hand.cards_total(hand))

end

end
