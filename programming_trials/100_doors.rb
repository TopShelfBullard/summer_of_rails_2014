1.upto(100) do |number|
  open = false
  1.upto(number) do |divider|
    if number % divider == 0
      open = !open
    end
  end
  state = open ? "open" : "closed"
  puts "Door number #{number} is #{state}."
end