class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    deduct(amount)
  end


  private

  def deduct(amount)
    @balance += amount
  end

end
