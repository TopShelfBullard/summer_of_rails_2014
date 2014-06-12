1.upto(100) do |number|
  output = ""

  if number % 3 == 0
    output = "fizz"
  end

  if number % 5 == 0
    output += "buzz"
  end

  output = output == "" ? number : output

  puts output
end