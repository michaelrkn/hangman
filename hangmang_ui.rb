puts "Welcome to Hangman!"

word = Word.new
game = Game.new(word)

until game.over?
  puts 'Here is your word:'
  puts word
  puts 'What letter would you like to guess?'
  if game.guess(gets.chomp)
    puts 'You got it right!'
  else
    puts 'Nope.'
  end
end

if game.won?
  'Congratulations, you win!'
else
  'Sorry, you lose.'
end