# frozen_string_literal: true

require 'account'
require 'printer'
require 'timecop'

describe 'Bank' do
  it 'can print out a correct statement' do
    account = Account.new
    Timecop.freeze(Date.parse('6 November 2018'))
    account.deposit(1000.00)
    account.deposit(2000.00)
    account.withdraw(500.00)
    expect { account.statement }.to output("date || credit || debit || balance\n 6-Nov-2018 ||  || 500.0 || 2500.0\n 6-Nov-2018 || 2000.0 ||  || 3000.0\n 6-Nov-2018 || 1000.0 ||  || 1000.0\n").to_stdout
  end
end
