require_relative "account"

class Balance

  attr_reader :total

  def initialize
    @total = 0
  end

  def add(amount)
    @total += amount
  end

  def subtract(amount)
    @total-= amount
  end

end
