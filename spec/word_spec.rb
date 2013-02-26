require 'spec_helper'

describe Word do
  context '#to_s' do
    it 'returns blank spaces with the length of the word' do
      Array.any_instance.should_receive(:sample).and_return('monkey')
      word = Word.new
      word.to_s.should eq '_ _ _ _ _ _'
    end
  end
end
