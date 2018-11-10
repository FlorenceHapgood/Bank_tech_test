require_relative "account"

class Balance

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def add(amount)
    @balance += amount
  end

  def subtract(amount)
    @balance -= amount
  end

end
