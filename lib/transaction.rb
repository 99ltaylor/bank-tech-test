require_relative 'account.rb'

class Transaction 
  attr_accessor :date, :credit, :debit, :balance

  # def initialize
  #   @date = date 
  #   @credit = credit
  #   @credit = debit
  #   @balance = balance
  # end

  # def initialize params = {}
  #   params.each { |key, value| send "#{key}=", value }
  # end

end



# def deposit(transaction_date ,credit)
#   new_balance = balance += credit
#   puts new_balance
# end 

#   def withdrawal
#   end 

# end