require 'spec_helper'

describe Game do
  context '#initialize' do
    it 'takes a word as an argument' do
      word = Word.new
      game = Game.new(word)
      game.should be_an_instance_of Game
    end
  end

  context '#over?' do
    it 'is not over for a new game' do
      word = Word.new
      game = Game.new(word)
      game.over?.should be_false
    end
  end
end
