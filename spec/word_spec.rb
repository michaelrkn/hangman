require 'spec_helper'

describe Word do
  context '#to_s' do
    it 'returns underscores the length of the word before any letters are guessed' do
      Array.any_instance.should_receive(:sample).and_return('monkey')
      word = Word.new
      word.to_s.should eq '_ _ _ _ _ _'
    end

    it 'replaces the underscores with letters when they are guessed correctly' do
      Array.any_instance.should_receive(:sample).and_return('palate')
      word = Word.new
      word.guess('a')
      word.to_s.should eq '_ a _ a _ _'
    end
  end

  context '#guess' do
    it 'returns false if the letter is not in the word' do
      Array.any_instance.should_receive(:sample).and_return('monkey')
      word = Word.new
      word.guess('z').should be_false
    end

    it 'returns true if the letter is in the word' do
      Array.any_instance.should_receive(:sample).and_return('monkey')
      word = Word.new
      word.guess('m').should be_true
    end
  end

  context '#number_of_letters' do
    it 'returns the number of letters in the word' do
      Array.any_instance.should_receive(:sample).and_return('palate')
      word = Word.new
      word.number_of_letters.should eq 5
    end
  end
end
