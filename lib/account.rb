# frozen_string_literal: true

require_relative 'money_in'
require_relative 'money_out'
require_relative 'printer'
require_relative 'balance'
# account Class
class Account
  attr_reader :balance, :money_in, :money_out, :history, :printer, :balance

  def initialize(money_in = Money_In, money_out = Money_Out,
                 printer = Printer.new, balance = Balance.new)

    @balance = balance
    @money_in = money_in
    @money_out = money_out
    @history = []
    @printer = printer
  end

  def deposit(amount)
    augment_balance(amount)
    history << money_in.new(amount, @balance.balance)
  end

  def augment_balance(amount)
    balance.add(amount)
  end

  def withdraw(amount)
    decrease_balance(amount)
    history << money_out.new(amount, @balance.balance)
  end

  def decrease_balance(amount)
    balance.subtract(amount)
  end

  def statement
    extract_records
    printer.print_statement(history)
  end

  private

  def extract_records
    @history.map!(&:record)
  end

end
