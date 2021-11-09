class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def cards
    @cards
  end


  def cards_in_category(category)
     categories = []
     @cards.each do |c|
       if c.category.eql?(category)
         categories << c
       end
     end
     categories #forgot to return lol

  end

end
