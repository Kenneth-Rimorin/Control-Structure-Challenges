#--Spaceship challenge --#

predef_num = 100
puts "Score to beat is 100"
puts "What is your score"
number_input = gets.chomp.to_i

input_var = number_input <=> predef_num

case input_var
when 1
    puts "Hey! You are the best!"
when 0
    puts "You are awesome as everyone else!"
when -1
    puts "You need to more awesome :("
end