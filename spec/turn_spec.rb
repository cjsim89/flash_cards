require './lib/card.rb'
require './lib/turn.rb'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the Capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    expect(turn).to be_instance_of(Turn)
  end

  it 'has correct answer' do
    card = Card.new("What is the Capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    expect(turn.correct).to eq(true)

  end

  it 'has an incorrect answer' do
    card = Card.new("What is the Capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Portmanteau", card)

    expect(turn.correct).to eq(false)

  end
end
