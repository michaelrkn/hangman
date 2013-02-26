require 'spec_helper'

describe Game do
  context '#initialize' do
    it 'takes a word as an argument' do
      word = Word.new
      game = Game.new(word)
      game.should be_an_instance_of Game
    end
  end

  context '#guess' do
    it 'checks the word to see if it is guessed correctly' do
      word = double
      game = Game.new(word)
      word.should_receive(:guess)
      game.guess('m')
    end
  end

  context '#over?' do
    it 'is not over for a new game' do
      word = Word.new
      game = Game.new(word)
      game.over?.should be_false
    end

    it 'is over after 8 wrong guesses' do
      word = Word.new
      word = double
      game = Game.new(word)
      word.stub(:guess).and_return(false)
      8.times {game.guess('z')}
      game.over?.should be_true
    end

    it 'is over if you guess all the letters in the word' do
      word = Word.new
      word = double
      game = Game.new(word)
      word.stub(:number_of_letters).and_return(6)
      word.stub(:guess).and_return(true)
      6.times {game.guess('m')}
      game.over?.should be_true
    end
  end
end
