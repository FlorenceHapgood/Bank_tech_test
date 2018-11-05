require_relative "money_in"
require_relative "money_out"

class Account
  attr_reader :balance, :money_in, :money_out, :history

  def initialize(money_in = Money_In, money_out = Money_Out)
    @balance = 0
    @money_in = money_in
    @money_out = money_out
    @history = []
  end

  def deposit(amount)
    history << money_in.new(amount)
  end

  def withdraw(amount)
    history << money_out.new(amount)
  end

  private

  def extract_records
    @history.map{|array|
    array.record}
  end

end
