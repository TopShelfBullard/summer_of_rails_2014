module Logger
  def log(message)
    output = "#{Time.now} : #{message}"
    File.open("log.txt", "w") do |logfile|
      logfile << output
    end
  end
end

module Interest
  def calculate_interest(principle, rate, years)
      principle * rate * years
  end
end

class BankAccount
  include Logger
  include Interest
  attr_reader :balance, :principle, :rate, :years
  attr_accessor :name

  def initialize
    @balance = 0
    @name = "unnamed"
    @account_events = Array.new
    @rate = 0.03
    @years = 2
  end

  def account_events
    @account_events
  end

  def deposit(amount)
    @account_events.push("Deposit of #{amount}")
    @principle = @principle ? @principle : amount
    @balance += amount
  end

  def withdraw(amount)
    @account_events.push("Withdrawal of #{amount}")
    @balance -= amount
  end

  def interest
    calculate_interest(@principle, @rate, @years)
  end

  def summary
    puts "The account #{@name} has a balance of $#{sprintf('%.2f', @balance)}."
  end

  def history
    puts "History for account #{@name}:"
    @account_events.each do |event|
      puts event
    end
    puts "The account #{@name} has a balance of $#{sprintf('%.2f', @balance)}."
  end

  def to_s
    BankAccount
  end
end

account1 = BankAccount.new
puts account1.balance

account1.deposit 20
puts account1.balance

account1.deposit 20
account1.deposit 40.0
puts account1.balance

account2 = BankAccount.new
account2.deposit 20
account2.withdraw 10
puts account2.balance

account1.name = "Test Account One"
account1.summary
account2.name = "Test Account Two"
account2.summary

account1.history
account2.history

puts account1.interest
puts account2.interest
