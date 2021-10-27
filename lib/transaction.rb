require_relative 'account.rb'

class Transaction 
  attr_accessor :date, :credit, :debit, :balance

  def initialize
    @date = date 
    @credit = credit
    @debit = debit
    @balance = balance
  end

end