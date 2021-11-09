require './lib/card.rb'
require './lib/deck.rb'

RSpec.describe Deck do
  it 'exists' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("Which Planet?", "Mars", :STEM)
    card_3 = Card.new("Kanye's Daughter?", "Northwest", :STEM)

    cards = [card_1, card_2, card_3]

    deck = Deck.new(cards)
    deck.cards

    expect(deck.cards).to be_instance_of(Array)

    expect(deck.count).to eql(3)

    expect(deck.cards_in_category(:STEM).length).to eql(2)


    expect(deck.cards_in_category(:Geography).length).to eql(1)

    expect(deck.cards_in_category("Pop Cultures").length).to eql(0)
  end
end
