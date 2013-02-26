puts "Welcome to Hangman!"

word = Word.new
game = Game.new(word)

until game.over?
  puts 'Here is your word:'
  puts word
end
