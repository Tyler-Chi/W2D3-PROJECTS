class Hand
  attr_reader :cards, :value
  def initialize(cards = [], value = 0)
    @cards, @value = cards, value
  end

  def calcualte

  end

  def check_pairs
    real_vals = []
    cards.each do |card|
      real_vals << card.real_value
    end

    real_vals.uniq.each do |val|
      if real_vals.count(val) == 2
        @value += (1000 * val)
        return true
      end
    end
    false
  end

  def check_triples
    real_vals = []
    cards.each do |card|
      real_vals << card.real_value
    end

    real_vals.uniq.each do |val|
      if real_vals.count(val) == 3
        @value += (100_000 * val)
        return true
      end
    end
    false
  end

  def check_full_house
    if self.check_pairs && self.check_triples
      @value *= 100
      return true
    end
    return false
  end


end
