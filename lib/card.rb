#represents a single flashcard. Stores a question, answer, and a category.

class Card
  attr_reader :question,
              :answer,
              :category
  def initialize(question, answer, category)
    @question = question
    @answer = answer.downcase
    @category = category
  end


end
