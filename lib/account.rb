class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    deduct(amount)
    confirmation_message(amount)
  end


  private

  def deduct(amount)
    @balance += amount
  end

  def confirmation_message(amount)
    print "Your deposit of £#{amount} was successful."
  end

end
