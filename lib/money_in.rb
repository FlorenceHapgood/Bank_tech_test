require "date"

class Money_In

  attr_reader :record

  def initialize(amount, balance)
    @record = { Credit: amount, Date: Date.today.strftime("%v"), Balance: balance }
  end

end
