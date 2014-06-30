not_done = true

while (not_done)
  puts "Enter a number or a string, or enter nothing to quit: "
  something = gets.chop
  not_done = something != ""
  message = not_done ? "You entered #{something}, which is a" : "We're done here."

  if something.to_i.to_s == something
    message += something.to_i % 2 == 0 ? "n even number." : "n odd number."
  else
    message += not_done ? " string." : ""
  end

  puts message
end