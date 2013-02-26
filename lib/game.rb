class Game
  def initialize(word)
    @word = word
    @wrong_guesses = 0
    @right_guesses = 0
  end

  def over?
    @wrong_guesses >= 8 || @right_guesses == @word.number_of_letters
  end

  def guess(letter)
    if @word.guess(letter)
      @right_guesses += 1
      true
    else
      @wrong_guesses += 1
      false
    end
  end
end
