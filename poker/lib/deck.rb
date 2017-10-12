class Deck

  attr_reader :cards

  CARD_TYPES = "2 3 4 5 6 7 8 9 10 J Q K A".split(" ")
  SUIT_TYPES = "C D H S".split(" ")
  def initialize
    @cards = populate
  end

  def populate
    array_of_cards = []
    CARD_TYPES.each do |value|
      SUIT_TYPES.each do |suit|
        array_of_cards << Card.new(value,suit)
      end
    end
    array_of_cards
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw(value = 1)
    output = []
    value.times do
      output << cards.pop
    end
    output
  end

end
