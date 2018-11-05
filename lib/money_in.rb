require "date"

class Money_In

  attr_reader :dep_record

  def initialize(amount)
    @dep_record = { Deposit_amount: amount, Date: Date.today }
  end

end
