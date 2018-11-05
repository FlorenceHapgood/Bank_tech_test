require_relative "money_in"

class Account
  attr_reader :balance, :money_in

  def initialize(money_in = Money_In)
    @balance = 0
    @money_in = money_in
  end

  def deposit(amount)
    deduct(amount)
    confirmation_message(amount)
    money_in.new(400)
  end


  private

  def deduct(amount)
    @balance += amount
  end

  def confirmation_message(amount)
    print "Your deposit of £#{amount} was successful."
  end


end
