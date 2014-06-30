people = []
ask_to_add_person = true

while ask_to_add_person
  puts "Would you like to enter #{people.length == 0 ? 'a' : 'another'} person? \nEnter 'yes' or 'no': "
  answer = gets.chop.downcase

  until answer == "yes" || answer == "no"
    puts "'#{answer}' is an invalid response. Please enter 'yes' or 'no': "
    answer = gets.chop.downcase
  end

  if answer == "no"
    ask_to_add_person = !ask_to_add_person
    puts "You entered #{people.length} #{people.length == 1 ? "person" : "people"}."
  else
    person = {:first_name => "first name", :last_name => "last name", :age => "age"}
    person.each {|key, value|
      puts "Please enter the #{value} of the person: "
      person[key] = gets.chop}
    people << person
  end
end