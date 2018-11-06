require 'account'
require 'printer'

feature 'Bank Statement' do
  scenario 'User deposit and withdraws money, and sees their statement' do
    account = Account.new
    account.deposit(1000.00)
    account.deposit(2000.00)
    account.withdraw(500.00)
    account.extract_records
    printer = Printer.new(account.history)
    expect{ (printer.print_statement) }.to output("date || credit || debit || balance\n6-Nov-2018 || 500.00 ||  || 2500.0\n6-Nov-2018 || 2000.0 ||  || 3000.0\n6-Nov-2018 ||  || 500.00 || 1000.0\n").to_stdout
  end
end
