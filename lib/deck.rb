


class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_cards_at(index_location)
    @cards[index_location].rank
  end

  def high_ranking_cards
    if card.rank > 11

  end

  def remove_card
  end

  def add_card
  end
end