class Turn
  attr_reader :guess, :card


  def initialize(guess, card)
    @guess = guess.downcase
    @card = card
  end

  def guess
    @guess
  end

  def card
    @card
  end

  def correct
    @card.answer.eql? @guess
  end

  def feedback
    if (self.correct)
      puts "Correct!"
    else
      puts "Incorrect."
    end
  end



end
