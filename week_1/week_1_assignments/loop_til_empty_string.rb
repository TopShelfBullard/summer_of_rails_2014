class Answer
  attr_accessor :done, :number1, :number0

  def self.number1(number)
    return "#{number} is an odd number."
  end

  def self.number0(number)
    return "#{number} is an even number."
  end

  def self.done
    "We're done."
  end

end

while true
  puts "Enter a number or a string, or enter nothing to quit: "
  something = gets.chop

  if something.to_i.to_s == something
    puts Answer.send("number#{something.to_i % 2}", something.to_i)
    redo
  end

  if Answer.respond_to?("done#{something}")
    puts Answer.done
    break
  end

  puts "#{something} is a string."
end
