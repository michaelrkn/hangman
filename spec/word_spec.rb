require 'spec_helper'

describe Word do
  context '#to_s' do
    it 'returns blank spaces with the length of the word' do
      word = Word.new
      Array.any_instance.stub(:sample).and_return('monkey')
      word.to_s
    end
  end
end
