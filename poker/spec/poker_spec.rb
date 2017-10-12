require 'deck'
require 'card'
require 'hand'

RSpec.describe Card do
  subject(:card) { Card.new("1", :c) }

  it "it initializes a value" do
    expect(card.value).to_not be(nil)
  end

  it "initializes the suit" do
    expect(card.suit).to_not be(nil)
  end

  it "gives the real value of the card" do

    expect(card.real_value.is_a?(Integer)).to be(true)
  end
end


RSpec.describe Deck do
  subject(:deck) {Deck.new}

  # let(:current_deck) {Deck.new}

  it "initializes a deck" do
    expect(deck.cards.length).to eq(52)
  end

  it "shuffles the deck" do
    expect(Deck.new).to_not eq(deck.shuffle!)
  end

  it "draws cards from the deck" do
    card = deck.draw
    expect(deck.cards).to_not include(card.first)
  end
end

RSpec.describe Hand do
  subject(:hand) {Hand.new}

  it "initializes an empty array" do
    expect(hand.cards).to eq([])
  end

  it "initializes the hand value variable" do
    expect(hand.value).to eq(0)
  end

  it "calculates pair of cards" do
    card1 = Card.new("2","H")
    card2 = Card.new("2","S")
    hand = Hand.new([card1,card2])
    hand.check_pairs
    expect(hand.value).to eq(2000)
  end

  it "calcualtes triples" do
    card1 = Card.new("2","H")
    card2 = Card.new("2","S")
    card3 = Card.new("2","D")
    hand = Hand.new([card1,card2,card3])
    hand.check_triples
    expect(hand.value).to eq(200_000)
  end

  it "calculates full house" do

  end

  it "calculates straights"

  it "calculates flushes"




end
