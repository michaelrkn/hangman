class Word
  def initialize
    @word = ['monkey', 'ape', 'chimp'].sample
  end

  def to_s
    (1..@word.length).map {|number| '_'}.join(' ')
  end

  def guess(letter)
    @word.include?(letter)
  end
end
