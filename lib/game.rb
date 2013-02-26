class Game
  def initialize(word)
    @word = word
  end

  def over?
    false
  end

  def guess(letter)
    @word.guess(letter)
  end
end
