require_relative "transaction.rb"

NEW_BALANCE = 0.00

class Account
  attr_reader :balance
  attr_accessor :transaction_history

  def initialize
    @balance = NEW_BALANCE
    @transaction_history = []
    p @transaction_history
  end

  def deposit(date, credit)
    @date = date
    @credit = credit
    @debit = 0.00
    @transaction_history = []
    @balance = @balance += @credit
    @transaction_history.push(@date, @credit, @debit, @balance)
    transaction = Transaction.new
    @transaction_history.push(transaction)
  end

  def withdrawal(date, debit)
    @date = date
    @debit = debit
    @credit = 0.00
    @balance = @balance -= @debit
    @transaction_history.push(@date, @credit, @debit, @balance)
    transaction = Transaction.new
    @transaction_history.push(transaction)
  end

  def print_statement
    puts "date || credit || debit || balance"
    p transaction_history.each do |log|
      puts "#{log.date} || #{log.credit} || #{log.debit} || #{log.balance}"
  end
end
end
