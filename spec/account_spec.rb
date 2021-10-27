require "account.rb"

describe Account do
  it "is created with a zero balance" do
    test_account = Account.new
    expect(test_account.balance).to eq 0
  end

  it "balance increases when credit is deposited" do
    test_account = Account.new
    date = 13112021
    credit = 2000
    expect { test_account.deposit(date, credit) }.to change { test_account.balance }.from(0).to(2000)
  end

  it "balance decreases when debit is withdrawn" do
    test_account = Account.new
    date = 14112021
    debit = 200
    expect { test_account.withdrawal(date,debit) }.to change{test_account.balance}.by(-200)
  end

  it "prints a bank statement" do
    test_account = Account.new
    test_account.withdrawal(14012023,500)
    test_account.deposit(13012023,2000)
    test_account.deposit(10012023,1000)
    expect(test_account.print_statement).should include (10012023|| 1000|| 0.0|| 2500.0)
  end

end
