require_relative 'money_in'
require_relative 'money_out'
require_relative 'printer'

class Account
  attr_reader :balance, :money_in, :money_out, :history, :printer

  def initialize(money_in = Money_In, money_out = Money_Out, printer = Printer.new)
    @balance = 0
    @money_in = money_in
    @money_out = money_out
    @history = []
    @printer = printer
  end

  def deposit(amount)
    add(amount)
    history << money_in.new(amount, @balance)
  end

  def withdraw(amount)
    subtract(amount)
    history << money_out.new(amount, @balance)
  end

  def statement
    extract_records
    printer.print_statement(history)
  end


 private

  def extract_records
    @history.map!{ |array|
    array.record }
  end

  def add(amount)
    @balance += amount
  end

  def subtract(amount)
    @balance -= amount
  end

end
