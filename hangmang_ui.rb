puts "Welcome to Hangman!"

word = Word.new
game = Game.new(word)

until game.over?
  puts 'Here is your word:'
  puts word
  puts 'What letter would you like to guess?'
  game.guess(gets.chomp)
end
