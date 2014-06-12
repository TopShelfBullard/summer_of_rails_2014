
99.downto(1) do |number|
  plurality = number != 1 ? "s" : ""
  secondary_plurality = number - 1 != 1 ? "s" : ""
  puts "#{number} bottle#{plurality} of beer on the wall"
  puts "#{number} bottle#{plurality} of beer."
  puts "Take one down, pass it around"
  puts "#{number - 1} bottle#{secondary_plurality} of beer on the wall"
end
