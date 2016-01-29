require 'pry'


CHOICES = {'r'=> "Rock", 'p'=>'Paper','s'=>'Scissors'}
puts 'Lets Play Rock, Paper, Scissors!'

def winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts 'Paper smothers rock!'
  when 'r'
    puts 'Rock smashes scissors!'
  when 's'
    puts 'Scissors shred paper!'
  end
end


loop do 
  begin
    puts 'Make your selection: r = Rock, p = Paper, s = Scissors'
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
  
  computer_choice = CHOICES.keys.sample
  puts "Computer chose #{CHOICES[computer_choice]}"

  if computer_choice == player_choice
    puts 'Game is a tie'
  elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 'p' && computer_choice == 'r') || 
        (player_choice == 's' && computer_choice == 'p')
        winning_message(player_choice)
        puts 'You win!!'
  else
    winning_message(computer_choice)
    puts 'You lose :('
  end

  puts "Want to play again y/n?"
  play_again = gets.chomp.downcase
  break if play_again == 'n'

 
end