#--ROCK SCISSORS PAPER GAME--#
require 'io/console'
puts "First Player : Rock | Scissors | Paper "
first_player = STDIN.noecho(&:gets).chomp

puts "Second Player : Rock | Scissors | Paper"
second_player = STDIN.noecho(&:gets).chomp

if first_player == "rock" and second_player == "scissors" 
        first_player = 2 
        second_player = 1
end        
if second_player == "scissors" and second_player == "rock"
        second_player = 2
        first_player = 1
end
 
if first_player == "scissors" and second_player == "paper"  
        first_player = 2 
        second_player = 1
end
if second_player == "paper" and second_player == "scissors"
        second_player = 1
        first_player = 2
end     
     
if first_player == "rock" and second_player == "paper"  
        first_player = 1 
        second_player = 2
end        
if first_player == "paper" and second_player == "rock"
        second_player = 1
        first_player = 2
end
if first_player == "rock" and second_player == "rock"
    first_player = 1
    second_player = 1
end
if first_player == "scissors" and second_player == "scissors"
    first_player = 1
    second_player = 1
end
if first_player == "paper" and second_player == "paper"
    first_player = 1
    second_player = 1
end
if first_player > second_player
    puts "First Player Win"
elsif first_player < second_player
    puts "Second Player Win"
elsif first_player == second_player
    puts "No Winner"
end