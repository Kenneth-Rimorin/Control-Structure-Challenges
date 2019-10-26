predef_pass = "kenneth"
guess = ""
guess_count = 0
guess_limit = 5
out_of_guess = false

while guess != predef_pass and !out_of_guess
  if guess_count < guess_limit

    puts "Enter Guess: "
    guess = gets.chomp
    guess_count += 1

  else
    out_of_guess = true
  end
end

if out_of_guess

  puts "YOU DIDN'T GUESS THE PASSWORD"

else
  puts "YOU GOT IT!"
end