def is_even?(number)
  number % 2 == 0
end

1.upto(10) do |number|
  puts is_even?(number) ? "#{number} is even." : "#{number} is odd."
end

