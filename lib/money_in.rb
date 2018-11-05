require "date"

class Money_In

  attr_reader :amount

  def initialize (amount)
    @amount = amount
  end

  def dep_record
    { Deposit_amount: amount, Date: Date.today }
  end

end
