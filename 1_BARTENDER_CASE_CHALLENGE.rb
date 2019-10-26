#--- Bartender Challenge using Case ---#

orders = %w(cocktail juice water beer tacos burger)
cocktail = 3
juice =0
water = 2
beer = 6
tacos = 0
burger = 0

cocktail_sell = 22
juice_sell = 6
water_sell = 0.15
beer_sell = 12
tacos_sell = 10
burger_sell = 20

puts "What you wanna order: Cocktail | Juice | Water| Beer | Tacos | Burger?"
order_input = gets.chomp
puts "How many #{order_input} you want?"
order_quantity = gets.chomp.to_i

case order_input
when "cocktail"
    puts "So you ordered #{order_quantity} #{order_input}(s)"
    cocktail += order_quantity

when "juice"
    puts "So you ordered #{order_quantity} #{order_input}(s)"
    juice += order_quantity
when "water"
    puts "So you ordered #{order_quantity} #{order_input}(s)"
    water += order_quantity
when "beer"
    puts "So you ordered #{order_quantity} #{order_input}(s)"
    beer += order_quantity
when "tacos"
    puts "So you ordered #{order_quantity} #{order_input}(s)"
    tacos += order_quantity
when "burger"
    puts "So you ordered #{order_quantity} #{order_input}(s)"   
    burger += order_quantity                 
end

puts "ORDERS TO MAKE : "
puts "Cocktail(s) : #{cocktail}"
if juice > 0
puts "Juice(s)    : #{juice}"
end
puts "water(s)    : #{water}"
puts "beer(s)     : #{beer}"
if tacos > 0
puts "tacos(s)    : #{tacos}"
end
if burger > 0
puts "burger(s)   : #{burger}"
end

profit = cocktail * cocktail_sell + water*water_sell + beer* beer_sell+ juice* juice_sell+ tacos* tacos_sell+ burger* beer_sell
puts "Total Profit is : $#{profit}" 