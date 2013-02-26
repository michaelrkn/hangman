class Word
  def initialize
    @word = ['monkey', 'ape', 'chimp'].sample
    @correct_guesses = []
  end

  def to_s
    @word.split('').map do |character|
      if @correct_guesses.include?(character)
        character
      else
        '_'
      end
    end.join(' ')
  end

  def contains?(letter)
    if @word.include?(letter)
      @correct_guesses << letter
      true
    else
      false
    end
  end

  def number_of_letters
    @word.split('').uniq.join.length
  end
end
