puts "This program adds together any three numbers that you want."

puts "You want the first number to be: "
number1 = gets.chop
number1 = number1.to_i

puts "You want the second number to be: "
number2 = gets.chop
number2 = number2.to_i

puts "You want the third number to be: "
number3 = gets.chop
number3 = number3.to_i

puts "The total of #{number1}, #{number2}, and #{number3} is #{number1 + number2 + number3}."
