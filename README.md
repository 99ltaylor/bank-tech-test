<h1> Bank tech test -- WORK IN PROGRESS-- </h1>

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

Specification
Requirements
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00


-- PLANNING --

INPUT                                               OUTPUT 

deposit 2000                              balance 2000
withdrawal 500                          balance -500
print statement                           all transactions printed


USER STORIES

As a customer
I want to have an account
So I keep my money safe

relevant nouns = Account

As a customer
I want to deposit money
So I can save money for new sneakers

relevant verbs = deposit(date, credit)

As a customer
I want to withdraw money
So I can buy some new sneakers

relevant verbs = withdraw(date, debit)

As a customer
I want to print my bank statement
So I can see what happening with my of my account

relevant verbs = print_statement

SUMMARY / CRC Model

Class: Account

Methods:
initialize (@transaction_history = [], @balance = 0)
deposit(date, credit)
withdraw(date, debit)
print_statement

Class: Transaction

Attribute accessor: date, credit, debit, balance
