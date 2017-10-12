class Card
  attr_reader :value, :suit
  def initialize(value, suit)
    @value, @suit = value, suit
  end

  def real_value
    cards = %w(J Q K A)
    return value.to_i if ("1".."10").to_a.include?(value)
    return 11 + cards.index(value)
  end

end


# subject(:deck) {Deck.new}
#
# let(:current_deck) {deck.cards}
#
# the same as doing
#
#
# current_deck = deck.cards
