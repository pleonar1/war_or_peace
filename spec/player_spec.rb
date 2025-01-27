require './lib/card'
require './lib/deck'
require './lib/player'

RSpec.describe Player do

  before(:each) do
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @deck = Deck.new([@card1, @card2, @card3])
    @player = Player.new('Clarisa', @deck)
  end


  it "exists" do
    expect(@player.name).to eq('Clarisa')
  end

  it "knows that it lost" do
    @player.deck.remove_card
    expect(@player.has_lost?).to eq(false)
    @player.deck.remove_card
    expect(@player.has_lost?).to eq(false)
    @player.deck.remove_card

    expect(@player.has_lost?).to eq(true)


  end
end
